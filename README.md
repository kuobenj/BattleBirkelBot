# BirkelBot Battlebot Repo
This repository is for the code and other files related to Team Unobtanium's Battlebot for the Combotics competition held annually at the University of Illinois at Urbana Champaign.

Team Unobtanium is:
* Matt Birkel - Team Captain, Mechanical Design, Software
* Benjamin Kuo - Electrical Design, Software

### Folder Structure
* Robot - This is robot side code. For now this should largely be arduino code for the arduino on board the robot.
* DriverStation - This is the operator side code. This is the code that runs on a driverstation computer.
* Arduino_Calibration_Stuff - This is a folder for a tool to use the arduino to calibrate ESC's
* PCB_files is a directory that holds the EAGLE files for the custom "motherboard" for the robot. This directory also features a reworked design of a PCB for hall effect sensors to sensor 35mm outrunner brushless motors.

### Dependencies
The Robot code is written for an Arduino Pro Mini. As such the Arduino IDE is required to compile and upload the Arduino-side code. The Arduino IDE offers a variety of Libraries for use. This project utilizes

* Encoder by Paul Stoffregen (version 1.4.1)
* PID by Brett Beauregard (version 1.2.0)

To install these libraries

- Go to 'Sketch' -> 'Include Library' -> 'Manage Libraries...'
- Search '<package-name>'
- Install '<package-name>'

The DriverStation code is a pythons script. Below are a potentially non-exhaustive list of the required dependencies.

* pygame - For grabbing joystick values
* serial - For writing to the serial out for the Xbee communication