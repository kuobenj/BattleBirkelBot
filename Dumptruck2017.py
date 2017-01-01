#!/usr/bin/env python

import pygame
import time
import sys
import math

import RPi.GPIO as GPIO

# Constants
leftMotorPin = 3
rightMotorPin = 5
armMotorPin = 7

LED1Pin = 11
LED2Pin = 13
LED3Pin = 15

MOTOR_IDLE = 127

def main():

    # Initialize the gamepad
    pygame.init()
    joysticks = []
    for i in range(0, pygame.joystick.get_count()):
        joysticks.append(pygame.joystick.Joystick(i))
        joysticks[-1].init()
        print("Detected joystick '",joysticks[-1].get_name(),"'")

    # Local variables
    prevMtrCmds = {'left':0, 'right':0}
    prevTimeSent = 0
    done = False

    #Initialize GPIO and software PWM for Motors
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(leftMotorPin, GPIO.OUT)
    GPIO.setup(rightMotorPin, GPIO.OUT)
    GPIO.setup(armMotorPin, GPIO.OUT)

    leftMotorObject = GPIO.PWM(leftMotorPin, 50)
    rightMotorObject = GPIO.PWM(rightMotorPin, 50)
    armMotorObject = GPIO.PWM(armMotorPin, 50)

    leftMotorObject.start(cmd2pwm(MOTOR_IDLE))
    rightMotorObject.start(cmd2pwm(MOTOR_IDLE))
    armMotorObject.start(cmd2pwm(MOTOR_IDLE))

    try:
        while (done == False):

            pygame.event.pump() # This line is needed to process the gamepad packets

            # Get the raw values for translation/rotation using the joysticks
            yRaw = joysticks[0].get_axis(1) # Y-axis translation comes from the left joystick Y axis
            rRaw = -joysticks[0].get_axis(3) # rotation comes from the right joystick X axis

            # Get the motor commands for H-Drive
            mtrCmds = arcadeDrive(yRaw, rRaw)

            # Get the controller commands for the arm
            armUpTrig = -joysticks[0].get_axis(2)          # Raising/lowering the arm comes from the analog triggers...
            armDownTrig = -joysticks[0].get_axis(5)          # Raising/lowering the arm comes from the analog triggers...
            armUpBtn = joysticks[0].get_button(4)    #    OR the left bumper
            armDownBtn = joysticks[0]. get_button(5) #    OR the right bumper
            
            # Apply precedence of the arm buttons over the analog triggers
            armCmd = int(127)
            if (armDownBtn):
                armCmd = int(127+100)
            elif (armUpBtn):
                armCmd = int(127-100)
            else:
                armUpTrig = (armUpTrig+1)/2.0
                armDownTrig = -(armDownTrig+1)/2.0
                armCmd = int(127 + (armUpTrig+armDownTrig)*127)

            # Only send if the commands changed or if 200ms have elapsed
            if (prevMtrCmds['left'] != mtrCmds['left'] or
                prevMtrCmds['right'] != mtrCmds['right'] or
                time.time()*1000 > prevTimeSent + 200):

                checksum = mtrCmds['left'] + mtrCmds['right'] + armCmd
                print("Sending... L: ", mtrCmds['left'], ", R: ", mtrCmds['right'], ", A: ", armCmd, ", CS: ", checksum)

                leftMotorObject.start(cmd2pwm(mtrCmds['left']))
                rightMotorObject.start(cmd2pwm(mtrCmds['right']))
                armMotorObject.start(cmd2pwm(armCmd))

                prevMtrCmds = mtrCmds
                prevTimeSent = time.time()*1000
                time.sleep(.05)
    except KeyboardInterrupt:
        cleanup()


def arcadeDrive(yIn, rIn):
    
    # Set drive command range constants
    zeroCommand = 127  # the default value that corresponds to no motor power
    cmdRange = 127     # the maximum amount (+/-) that the command can vary from the zero command
    maxCommand = cmdRange
    minCommand = -cmdRange

    # Set constants for the exponential functions for each drive command (x/y/r)
    endExpConst = 1.44 # don't change this unless you've really looked over the math

    yExpConst = 1.5  # exponential growth coefficient of the Y-axis translation -- should be between 1.0-4.0
    yEndpoint = 127  # maximum/minumum (+/-) for the Y-axis translation

    rExpConst = 1.5  # exponential growth coefficient of the R-axis translation -- should be between 1.0-4.0
    rEndpoint = 50  # maximum/minimum (+/-) for the rotation

    deadband = 0.10

    leftMtrBaseCmd = 2
    rightMtrBaseCmd = 3

    # Save the negative-ness, which will be re-applied after the exponential function is applied
    if yIn < 0:
        yNeg = -1
    else:
        yNeg = 1

    if rIn < 0:
        rNeg = -1
    else:
        rNeg = 1

    # Apply a deadband
    if abs(yIn) < deadband:
        yIn = 0
    if abs(rIn) < deadband:
        rIn = 0

    # print("X: ", xIn, " Y: ", yIn, " R: ", rIn)
    
    # Compute the drive commands using the exponential function (zero-based)
    yCmd = int(yNeg*(math.pow(math.e,math.pow(math.fabs(yIn),yExpConst)/endExpConst)-1)*yEndpoint) # zero-based
    rCmd = int(rNeg*(math.pow(math.e,math.pow(math.fabs(rIn),rExpConst)/endExpConst)-1)*rEndpoint) # zero-based

    # Convert the drive commands into motor comands (zero-based)
    leftMtrCmd = yCmd + rCmd   # zero-based
    rightMtrCmd = yCmd - rCmd  # zero-based

    # Add an offset for the minimum command to overcome the gearboxes
    if leftMtrCmd > 0:
        leftMtrCmd = leftMtrCmd + leftMtrBaseCmd
    elif leftMtrCmd < 0:
        leftMtrCmd = leftMtrCmd - leftMtrBaseCmd
    if rightMtrCmd > 0:
        rightMtrCmd = rightMtrCmd + rightMtrBaseCmd
    elif rightMtrCmd < 0:
        rightMtrCmd = rightMtrCmd - rightMtrBaseCmd

    # print("L: ", leftMtrCmd, " R: ", rightMtrCmd)

    # If the commands are greater than the maximum or less than the minimum, scale them back
    maxMtrCmd = max(leftMtrCmd, rightMtrCmd)
    minMtrCmd = min(leftMtrCmd, rightMtrCmd)
    scaleFactor = 1.0
    if maxMtrCmd > maxCommand or minMtrCmd < minCommand:
        if maxMtrCmd > abs(minMtrCmd):
            scaleFactor = float(maxCommand) / float(maxMtrCmd)
        else:
            scaleFactor = float(minCommand) / float(minMtrCmd)

    # print("maxMtrCmd: ", maxMtrCmd, " minMtrCmd: ", minMtrCmd, " maxCommand: ", maxCommand, " minCommand: ", minCommand, " scaleFactor: ", scaleFactor)

    leftMtrCmdScaled = leftMtrCmd * scaleFactor
    rightMtrCmdScaled = rightMtrCmd * scaleFactor

    # print("L scaled: ", leftMtrCmd, " R scaled: ", rightMtrCmd)

    # Shift the commands to be based on the zeroCommand (above)
    leftMtrCmdFinal = int(leftMtrCmdScaled + zeroCommand)
    rightMtrCmdFinal = int(rightMtrCmdScaled + zeroCommand)

    return {'left':leftMtrCmdFinal, 'right':rightMtrCmdFinal}


def cmd2pwm(cmd_val):
    ret_val = ((cmd_val - 127.0)/127.0)*2.5+7.5
    return ret_val

def cleanup():
    print("Cleaning up and exiting")
    GPIO.cleanup()
    exit() 


if __name__ == '__main__':
    sys.exit(int(main() or 0))
