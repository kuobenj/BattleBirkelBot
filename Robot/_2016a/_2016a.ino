#include <Servo.h>
Servo leftSrvo;
Servo rightSrvo;
Servo midSrvo;
Servo armSrvo;
const int leftPin = 6;
const int rightPin = 9;
const int midPin = 10;
const int armPin = 11;
const int redPin = 3;

void setup()
{
  //57600 baud, pin 13 is an indicator LED
  pinMode(13, OUTPUT);
  Serial.begin(57600);
  Serial.setTimeout(510);

  pinMode(redPin,OUTPUT);
  leftSrvo.attach(leftPin);
  rightSrvo.attach(rightPin);
  midSrvo.attach(midPin);
  armSrvo.attach(armPin);

  leftSrvo.writeMicroseconds(1500);
  rightSrvo.writeMicroseconds(1500);
  midSrvo.writeMicroseconds(1500);
  armSrvo.writeMicroseconds(1500);

  analogWrite(redPin, 1023);  // analogRead values go from 0 to 1023, analogWrite values from 0 to 255

  // give a few blinks to show that the code is up and running
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
  if (Serial.available() >= 5) {
    int start = Serial.read();
    if (start == 255) {
      digitalWrite(13, HIGH); //indicate that we have signal
      lastTimeRX = millis();
      
      int left = Serial.read();
      int right = Serial.read();
      int mid = Serial.read();
      int arm = Serial.read();
      
//      Serial.print("L: ");
//      Serial.print(left);
//      Serial.print(", R:");
//      Serial.print(right);
//      Serial.print(", M:");
//      Serial.print(mid);
//      Serial.print(", A:");
//      Serial.print(arm);
//      Serial.println("");
      
      left = map(left, 0, 254, 1000, 2000);
      right = map(right, 0, 254, 1000, 2000);
      mid = map(mid, 0, 254, 1000, 2000);
      arm = map(arm, 0, 254, 1000, 2000);

      leftSrvo.writeMicroseconds(left);
      rightSrvo.writeMicroseconds(right);
      midSrvo.writeMicroseconds(mid);
      armSrvo.writeMicroseconds(arm);
    }
  }
  checkComms();
}


void checkComms() {
  if (millis() - lastTimeRX > 250) {
    rightSrvo.writeMicroseconds(1500);
    leftSrvo.writeMicroseconds(1500);
    midSrvo.writeMicroseconds(1500);
    armSrvo.writeMicroseconds(1500);
    digitalWrite(13, LOW);
//    delay(10);
    Serial.println("No comms");
  }
}
