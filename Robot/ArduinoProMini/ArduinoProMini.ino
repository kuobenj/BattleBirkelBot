#include <Servo.h>
Servo leftSrvo;
Servo rightSrvo;
Servo armSrvo;
const int leftPin = 3;
const int rightPin = 5;
const int armPin = 6;
const int boardLedPin = 13;
const unsigned char ledPin1 = 12; //blue?
const unsigned char ledPin2 = 11; //red?
const unsigned char ledPin3 = 10; //green?

void setup()
{
  //57600 baud, pin 13 is an indicator LED
  pinMode(boardLedPin, OUTPUT);
  Serial.begin(57600);
  Serial.setTimeout(510);

  // Set the modes on the motor pins
  leftSrvo.attach(leftPin);
  rightSrvo.attach(rightPin);
  armSrvo.attach(armPin);

  // Set the modes of the feedback LED pins
  pinMode(ledPin1,OUTPUT);
  pinMode(ledPin2,OUTPUT);
  pinMode(ledPin3,OUTPUT);

  // Write initial values to the pins
  leftSrvo.writeMicroseconds(1500);
  rightSrvo.writeMicroseconds(1500);
  armSrvo.writeMicroseconds(1500);
  
  digitalWrite(ledPin1, HIGH);
  digitalWrite(ledPin2, HIGH);
  digitalWrite(ledPin3, HIGH);

  // Give a few blinks to show that the code is up and running
  digitalWrite(boardLedPin, HIGH);
  delay(200);
  digitalWrite(boardLedPin, LOW);
  delay(200);
  digitalWrite(boardLedPin, HIGH);
  delay(200);
  digitalWrite(boardLedPin, LOW);
  delay(200);
}

unsigned long lastTimeRX = 0;

void loop()
{
  if (Serial.available() >= 4) {
    int start = Serial.read();
    // Look for the start byte (255, or 0xFF)
    if (start == 255) {
      // Indicate that we have signal by illuminating the on-board LED
      digitalWrite(boardLedPin, HIGH);
      lastTimeRX = millis();
      
      int left = Serial.read();
      int right = Serial.read();
      int arm = Serial.read();

      // Debug output
//      Serial.print("L: ");
//      Serial.print(left);
//      Serial.print(", R:");
//      Serial.print(right);
//      Serial.print(", A:");
//      Serial.print(arm);
//      Serial.println("");
      
      left = map(left, 0, 254, 1000, 2000);
      right = map(right, 0, 254, 1000, 2000);
      arm = map(arm, 0, 254, 1000, 2000);

      if (arm > 1505)
      {
        digitalWrite(ledPin1, HIGH);
        digitalWrite(ledPin2, LOW);
        digitalWrite(ledPin3, LOW);
      }
      else if(arm < 1495)
      {
        digitalWrite(ledPin1, LOW);
        digitalWrite(ledPin2, LOW);
        digitalWrite(ledPin3, HIGH);
      }
      else
      {
        digitalWrite(ledPin1, HIGH);
        digitalWrite(ledPin2, HIGH);
        digitalWrite(ledPin3, HIGH);
      }

      leftSrvo.writeMicroseconds(left);
      rightSrvo.writeMicroseconds(right);
      armSrvo.writeMicroseconds(arm);
    }
  }
  checkComms();
}


void checkComms() {
  if (millis() - lastTimeRX > 250) {
    // Set all motors to neutral
    rightSrvo.writeMicroseconds(1500);
    leftSrvo.writeMicroseconds(1500);
    armSrvo.writeMicroseconds(1500);
    // Indicate that we have lost comms by turning off the on-board LED
    digitalWrite(boardLedPin, LOW);
    digitalWrite(ledPin1, LOW);
    digitalWrite(ledPin2, HIGH);
    digitalWrite(ledPin3, LOW);
//    delay(10);
//    Serial.println("No comms");
  }
}
