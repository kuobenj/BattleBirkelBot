#include <Servo.h>
#include <Encoder.h>

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
const unsigned char ledPin1 = 14; //blue?
const unsigned char ledPin2 = 15; //red?
const unsigned char ledPin3 = 16; //green?

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

//Encoders
/* If the Encoder API is not installed in your Arduino Environement:
	- Go to 'Sketch' -> 'Include Library' -> 'Manage Libraries...'
	- Search 'Encoder'
	- Install 'Encoder by Paul Stoffregen' (This project uses version 1.4.1)
*/
Encoder inttEnc(inttEncPinA, inttEncPinB);
// Encoder pollEnc(pollEncPinA, pollEncPinB);

unsigned long lastTimeRX = 0;



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
		// Serial.print("L: ");
		// Serial.print(left);
		// Serial.print(", R:");
		// Serial.print(right);
		// Serial.print(", A:");
		// Serial.print(arm);
		// Serial.print(", Enc:");
		// Serial.print(inttEnc.read());
		// Serial.println("");
		
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
	// delay(10);
	// Serial.println("No comms");
	}
}
