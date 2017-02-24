#include <Servo.h>
Servo leftSrvo;
Servo rightSrvo;
Servo armSrvo;
const int leftPin = 6;
const int rightPin = 9;
const int armPin = 11;
const int redPin = 3;

void setup()
{
  //57600 baud, pin 13 is an indicator LED
  pinMode(13, OUTPUT);
  Serial.begin(57600);
  Serial.setTimeout(510);

  // Set the modes on the pins
  leftSrvo.attach(leftPin);
  rightSrvo.attach(rightPin);
  armSrvo.attach(armPin);
  pinMode(redPin,OUTPUT);

  // Write initial values to the pins
  leftSrvo.writeMicroseconds(1500);
  rightSrvo.writeMicroseconds(1500);
  armSrvo.writeMicroseconds(1500);
  analogWrite(redPin, 255);  // analogWrite values from 0 to 255

  // Give a few blinks to show that the code is up and running
  digitalWrite(13, HIGH);
  delay(200);
  digitalWrite(13, LOW);
  delay(200);
  digitalWrite(13, HIGH);
  delay(200);
  digitalWrite(13, LOW);
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
      digitalWrite(13, HIGH);
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
    digitalWrite(13, LOW);
//    delay(10);
//    Serial.println("No comms");
  }
}
