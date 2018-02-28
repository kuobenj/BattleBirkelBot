#include <Servo.h>
#include <Encoder.h>
#include <PID_v1.h>

/*==============================GLOBAL VARS===================================*/
//Motor Pins
const unsigned char leftPin = 5;
const unsigned char rightPin = 6;
const unsigned char armPin = 9;

//Aux Pins for Motors or I/O
// const unsigned char aux1Pin = 10;
// const unsigned char aux2Pin = 11;

//Lights
const unsigned char boardLedPin = 13;
  //LED Strip
const unsigned char ledPinBlue = 14;
const unsigned char ledPinRed = 15;
const unsigned char ledPinGreen = 16;

//Encoder Pins
const unsigned char inttEncPinA = 2;
const unsigned char inttEncPinB = 3;
// const unsigned char pollEncPinA = 7;
// const unsigned char pollEncPinB = 8;

//Using Servo API for ESCs
Servo leftSrvo;
Servo rightSrvo;
Servo armSrvo;
// Uncomment these if you want to run additional motors
// Servo aux1Srvo;
// Servo aux2Srvo;

// If true, arm input = angle
// If false arm input = motor direction and speed (default)
bool armAngleMode = false;

// The encoder value at which the arm is considered to be
// all the way down at "zero" angle.
int armZeroPoint = 0;

// The multiplier used to convert the arm angle (0 to 250)
// to the desired encoder value.
double armScale = 100;

//Encoders
/* If the Encoder API is not installed in your Arduino Environement:
  - Go to 'Sketch' -> 'Include Library' -> 'Manage Libraries...'
  - Search 'Encoder'
  - Install 'Encoder by Paul Stoffregen' (This project uses version 1.4.1)
*/
Encoder inttEnc(inttEncPinA, inttEncPinB);
// Encoder pollEnc(pollEncPinA, pollEncPinB);

//PID object for arm
//TODO: SET GAINS
double myPID_Setpoint, myPID_Input, myPID_Output;
double Kp=2, Ki=5, Kd=1; //Gains
PID myPID(&myPID_Input, &myPID_Output, &myPID_Setpoint, Kp, Ki, Kd, P_ON_M, DIRECT);

//var for checking if comms are lost
unsigned long lastTimeRX = 0;

//Local testing
int loopCount = 0;

/*=================================SET UP=====================================*/
void setup() {
  //57600 baud, pin 13 is an indicator LED
  pinMode(boardLedPin, OUTPUT);
  Serial.begin(57600);
  Serial.setTimeout(510);

  // Set the modes on the motor pins
  leftSrvo.attach(leftPin);
  rightSrvo.attach(rightPin);
  armSrvo.attach(armPin);

  // Set the modes of the feedback LED pins
  pinMode(ledPinBlue,OUTPUT);
  pinMode(ledPinRed,OUTPUT);
  pinMode(ledPinGreen,OUTPUT);

  // Write initial values to the pins
  leftSrvo.writeMicroseconds(1500);
  rightSrvo.writeMicroseconds(1500);
  armSrvo.writeMicroseconds(1500);
  
  digitalWrite(ledPinBlue, LOW);
  digitalWrite(ledPinRed, LOW);
  digitalWrite(ledPinGreen, LOW);

  // Set Up Arm PID
  //turn the PID on
  myPID_Setpoint = 0.0; //TODO: Change this to meaningful value
  myPID.SetMode(AUTOMATIC);
  myPID.SetOutputLimits(-500, 500);

  // Give a few blinks to show that the code is up and running
  blinkBoardLed(2, 200);
}

/*=================================LOOP=======================================*/
void loop() {
  if (serialAvailable()) {
    // Look for the start byte (255, or 0xFF)
    if (serialRead() == 255) {
      lastTimeRX = millis();
      int left = serialRead();
      int right = serialRead();
      int arm = serialRead();
      if (left == 126 && right == 126 && arm == 126) {
        processSetup();
      } else if (left < 255 && right < 255 && arm < 255) {
        processCmd(left, right, arm);
      }
    }
  }
  if (millis() - lastTimeRX > 250) {
    idle();
  }
}


/*============================CUSTOM FUNC=====================================*/
void processCmd(int left, int right, int arm) {
  // Debug output
  // Serial.print("L: ");
  // Serial.print(left);
  // Serial.print(", R:");
  // Serial.print(right);
  // Serial.print(", A:");
  // Serial.print(arm);
  // Serial.print(", Enc:");
  // Serial.print(inttEnc.read());
  // Serial.print(", Count:");
  // Serial.print(++loopCount);
  // Serial.println("");

  // Indicate that we have signal by illuminating the on-board LED
  digitalWrite(boardLedPin, HIGH);

  // Special values: 123 to 126
  // left/right/arm all == 126 is setup cmd - see main loop
  if (arm == 123) {        // reset current arm encoder value as zero point
    armZeroPoint = inttEnc.read();
  } else if (arm == 124) { // set arm in angle mode
    armAngleMode = true;
  } else if (arm == 125) { // set arm in motor mode (default)
    armAngleMode = false;
  } else if (armAngleMode) {
    setArmAngle(arm);
  } else {
    moveArm(arm);
  }
  runWheels(left, right);
}

void setArmAngle(int arm) {
  // Omit the reserved values listed in processCmd (123 - 126)
  // so that the arm value represents a contiguous range of values.
  // arm == 127 is valid angle, but represents idle when armAngleMode == false.
  if (arm > 123) arm -= 4;

  // Multiply the desired arm angle by armScale
  // to get the desired encoder angle.
  myPID_Setpoint = ((double) arm) * armScale;

  // Subtract the armZeroPoint from the current encoder value
  // to get the current encoder angle.
  myPID_Input = (double) (inttEnc.read() - armZeroPoint);
  myPID.Compute();

  // Debug output
   Serial.print("  PID arm: ");
   Serial.print(arm);
   Serial.print(", setpoint: ");
   Serial.print(myPID_Setpoint);
   Serial.print(", input: ");
   Serial.print(myPID_Input);
   Serial.print(", output:");
   Serial.print((int) myPID_Output + 1500);
   Serial.println("");

  armSrvo.writeMicroseconds((int) myPID_Output + 1500);
  updateLEDs(arm);
}

void moveArm(int arm) {
  arm = map(arm, 0, 254, 1000, 2000);
  armSrvo.writeMicroseconds(arm);
  updateLEDs(arm);
}

void runWheels(int left, int right) {
  left = map(left, 0, 254, 1000, 2000);
  right = map(right, 0, 254, 1000, 2000);

  leftSrvo.writeMicroseconds(left);
  rightSrvo.writeMicroseconds(right);
}

void idle() {
  // Set all motors to neutral
  rightSrvo.writeMicroseconds(1500);
  leftSrvo.writeMicroseconds(1500);
  armSrvo.writeMicroseconds(1500);

  // Indicate that we have lost comms by turning off the on-board LED
  digitalWrite(boardLedPin, LOW);
  digitalWrite(ledPinBlue, LOW);
  digitalWrite(ledPinRed, HIGH);
  digitalWrite(ledPinGreen, LOW);
}

void updateLEDs(int arm) {
  if (arm > 1505) {
    digitalWrite(ledPinBlue, HIGH);
    digitalWrite(ledPinRed, LOW);
    digitalWrite(ledPinGreen, LOW);
  } else if(arm < 1495) {
    digitalWrite(ledPinBlue, LOW);
    digitalWrite(ledPinRed, LOW);
    digitalWrite(ledPinGreen, HIGH);
  } else {
    digitalWrite(ledPinBlue, HIGH);
    digitalWrite(ledPinRed, HIGH);
    digitalWrite(ledPinGreen, HIGH);
  }
}

void blinkBoardLed(int count, int duration) {
  for (int index = 0; index < count; ++index) {
    digitalWrite(boardLedPin, HIGH);
    delay(duration);
    digitalWrite(boardLedPin, LOW);
    delay(duration);
  }
}

// Specialized command for setting up the PID controller.
// Command format:
//   255, 126, 126, 126,
//     <Mode char>,            <--- either "A" for automatic
//                                      or "M" for manual
//     <Proportional char>,    <--- either "E" for proportional on error
//                                      or "M" for proportional on measurement
//     <# chars> <Kp>,         <--- string representing value of Kp
//     <# chars> <Ki>,         <--- string representing value of Ki
//     <# chars> <Kd>,         <--- string representing value of Kd
//     <# chars> <armScale>,   <--- string representing value of armScale
//     <checksum>              <--- sum all chars excluding lengths & 0xFF
void processSetup() {
  Serial.println("Setup:");

  // Simple checksum
  // If needed, consider Fletcher checksum
  int checksum = 0;

  char mode = serialRead();
  checksum += mode;
  Serial.print("  Mode automatic/manual: ");
  Serial.println(mode);

  char proportional = serialRead();
  checksum += proportional;
  Serial.print("  Proportional on error/measurement: ");
  Serial.println(proportional);

  // Read 3 strings and convert to doubles
  double values[4];
  for (int valueIndex = 0; valueIndex < 4; ++valueIndex) {
    // Read string as # characters followed by characters
    int strLen = serialRead();
    char strChars[strLen + 1];
    for (int strIndex = 0; strIndex < strLen; ++strIndex) {
      char ch = serialRead();
      strChars[strIndex] = ch;
      checksum += ch;
    }
    strChars[strLen] = 0;
    String valueStr = String(strChars);
    values[valueIndex] = valueStr.toDouble();
    Serial.print("  ");
    Serial.println(values[valueIndex]);
  }

  // Simple sanity check - abort if checksum does not match
  if ((checksum & 0xFF) != serialRead()) {
    Serial.print("  Checksum did not match. Expected: ");
    Serial.println(checksum & 0xFF);
    blinkBoardLed(3, 500);
    return;
  }

  if (mode == 'M') {
    myPID.SetMode(MANUAL);
  } else {
    myPID.SetMode(AUTOMATIC);
  }
  Kp = values[0];
  Ki = values[1];
  Kd = values[2];
  armScale = values[3];
  int pOn;
  if (proportional == 'E') {
    pOn = P_ON_E;
  } else {
    pOn = P_ON_M;
  }
  myPID.SetTunings(Kp, Ki, Kd, pOn);
  Serial.println("  PID gains set");
  blinkBoardLed(5, 50);
}

/*============================LOCAL TEST=====================================*/
int serialData[] = {255, 127, 127, 127};
int serialIndex = 0;

char setupData[][10] = { // max string size + 1 for null terminator
  {255, 126, 126, 126, 'A', 'M'}, // setup signal + mode + proportional
  "2.0", // Kp
  "5.17", // Ki
  "1.3", // Kd
  "200.0", // armScale
};
int setupChecksum = 107;
int setupIndex = 0;
int setupCount = 0;

bool serialAvailable() {
  // return Serial.available() >= 4;

  // Local test
  return true;
}

int serialRead() {
  // return Serial.read();

  // Local test
  // Simulate client setup command
  if (setupCount >= 0) {
    while (setupCount < 5) {
      if (setupIndex == -1) {
        ++setupIndex;
        return String(setupData[setupCount]).length();
      }
      unsigned char ch = setupData[setupCount][setupIndex++];
      if (ch != 0) {
        return ch;
      }
      setupIndex = -1;
      ++setupCount;
    }
    setupCount = -1;
    return setupChecksum;
  }

  // Simulate joystick input from the keyboard
  if (Serial.available() > 0) {
    int serialCmd = Serial.read();
    Serial.println(serialCmd);
    if (serialCmd == 'f') {        // forward
      serialData[1] = min(serialData[1] + 10, 254);
      serialData[2] = min(serialData[2] + 10, 254);
    } else if (serialCmd == 's') { // stop
      serialData[1] = 127;
      serialData[2] = 127;
    } else if (serialCmd == 'r') { // reverse
      serialData[1] = max(serialData[1] - 10, 0);
      serialData[2] = max(serialData[2] - 10, 0);
    } else if (serialCmd == 'u') { // arm up
      int arm = min(serialData[3] + 1, 250);
      if (arm >= 123 && arm <= 126) arm = 127;
      serialData[3] = arm;
    } else if (serialCmd == 'd') { // arm down
      int arm = max(serialData[3] - 1, 0);
      if (arm >= 123 && arm <= 126) arm = 127;
      serialData[3] = arm;
    } else if (serialCmd == '1') { // set arm angle to 1 degree
      serialData[3] = 1;
    } else if (serialCmd == 'z') { // set arm zero point
      serialData[3] = 123;
    } else if (serialCmd == 'a') { // toggle arm angle/motor mode
      if (!armAngleMode) {
        serialData[3] = 124;
      } else {
        serialData[3] = 125;
      }
    }
  }
  int value = serialData[serialIndex];
  ++serialIndex;
  if (serialIndex > 3) {
    serialIndex = 0;
  }
  return value;
}
