#!/usr/bin/env python

import pygame
import time
import os
import serial
import array
import sys
import math

# Global variables
startByte = 0xFF

# To check what serial ports are available in Linux, use the bash command: dmesg | grep tty
# To check what serial ports are available in Windows, use the cmd command: wmic path Win32_SerialPort
comPort = 'COM3'

def main():

    # Initialize the serial port
    ser = serial.Serial(comPort, 57600, timeout=1)
    #os.environ["SDL_VIDEODRIVER"] = "dummy"

    # Initialize the gamepad
    pygame.init()
    joysticks = []
    for i in range(0, pygame.joystick.get_count()):
        joysticks.append(pygame.joystick.Joystick(i))
        joysticks[-1].init()
        print("Detected joystick '",joysticks[-1].get_name(),"'")

    # Local variables
    prevMtrCmds = {'left':0, 'right':0, 'mid':0}
    prevTimeSent = 0
    done = False

    try:
        while (done == False):

            pygame.event.pump() # This line is needed to process the gamepad packets

            # Get the raw values for translation/rotation using the joysticks
            xRaw = joysticks[0].get_axis(0) # X-axis translation comes from the left joystick X axis
            yRaw = joysticks[0].get_axis(1) # Y-axis translation comes from the left joystick Y axis
            rRaw = -joysticks[0].get_axis(4) # rotation comes from the right joystick X axis

            # Get the motor commands for H-Drive
            mtrCmds = hDrive(xRaw, yRaw, rRaw)

            # Get the controller commands for the arm
            armTrig = -joysticks[0].get_axis(2)          # Raising/lowering the arm comes from the analog triggers...
            armUpBtn = joysticks[0].get_button(4)    #    OR the left bumper
            armDownBtn = joysticks[0]. get_button(5) #    OR the right bumper
            
            # Apply precedence of the arm buttons over the analog triggers
            armCmd = int(127)
            if (armDownBtn):
                armCmd = int(127+100)
            elif (armUpBtn):
                armCmd = int(127-100)
            else:
                armCmd = int(127 + armTrig*127)

            # Only send if the commands changed or if 200ms have elapsed
            if (prevMtrCmds['left'] != mtrCmds['left'] or
                prevMtrCmds['right'] != mtrCmds['right'] or
                prevMtrCmds['mid'] != mtrCmds['mid'] or
                time.time()*1000 > prevTimeSent + 200):

                checksum = mtrCmds['left'] + mtrCmds['right'] + mtrCmds['mid'] + armCmd
                print("Sending... L: ", mtrCmds['left'], ", R: ", mtrCmds['right'], ", M: ", mtrCmds['mid'], ", A: ", armCmd, ", CS: ", checksum)
                ser.write(chr(255))
                ser.write(chr(254-mtrCmds['left']))
                ser.write(chr(mtrCmds['right']))
                ser.write(chr(mtrCmds['mid']))
                ser.write(chr(armCmd))

                # ser.write(startByte.to_bytes(1, byteorder='big'))
                # ser.write(mtrCmds['left'].to_bytes(1, byteorder='big'))
                # ser.write(mtrCmds['right'].to_bytes(1, byteorder='big'))
                # ser.write(mtrCmds['mid'].to_bytes(1, byteorder='big'))
                # ser.write(int(armCmd).to_bytes(1, byteorder='big'))
                # ser.write(str(checksum).encode())
                # ser.write(str("\n").encode())

                prevMtrCmds = mtrCmds
                prevTimeSent = time.time()*1000
                time.sleep(.05)
    except KeyboardInterrupt:
        cleanup()


def hDrive(xIn, yIn, rIn):
    
    # Set drive command range constants
    zeroCommand = 127  # the default value that corresponds to no motor power
    cmdRange = 127     # the maximum amount (+/-) that the command can vary from the zero command
    maxCommand = cmdRange
    minCommand = -cmdRange

    # Set constants for the exponential functions for each drive command (x/y/r)
    endExpConst = 1.44 # don't change this unless you've really looked over the math

    xExpConst = 1.5  # exponential growth coefficient of the X-axis translation -- should be between 1.0-4.0
    xEndpoint = 127  # maximum/minumum (+/-) for the X-axis translation

    yExpConst = 1.5  # exponential growth coefficient of the Y-axis translation -- should be between 1.0-4.0
    yEndpoint = 127  # maximum/minumum (+/-) for the Y-axis translation

    rExpConst = 1.5  # exponential growth coefficient of the R-axis translation -- should be between 1.0-4.0
    rEndpoint = 50  # maximum/minimum (+/-) for the rotation

    deadband = 0.10

    leftMtrBaseCmd = 2
    rightMtrBaseCmd = 3
    midMtrBaseCmd = 2


    # Save the negative-ness, which will be re-applied after the exponential function is applied
    if xIn < 0:
        xNeg = -1
    else:
        xNeg = 1

    if yIn < 0:
        yNeg = -1
    else:
        yNeg = 1

    if rIn < 0:
        rNeg = -1
    else:
        rNeg = 1

    # Apply a deadband
    if abs(xIn) < deadband:
        xIn = 0
    if abs(yIn) < deadband:
        yIn = 0
    if abs(rIn) < deadband:
        rIn = 0

    # print("X: ", xIn, " Y: ", yIn, " R: ", rIn)
    
    # Compute the drive commands using the exponential function (zero-based)
    xCmd = int(xNeg*(math.pow(math.e,math.pow(math.fabs(xIn),xExpConst)/endExpConst)-1)*xEndpoint) # zero-based
    yCmd = int(yNeg*(math.pow(math.e,math.pow(math.fabs(yIn),yExpConst)/endExpConst)-1)*yEndpoint) # zero-based
    rCmd = int(rNeg*(math.pow(math.e,math.pow(math.fabs(rIn),rExpConst)/endExpConst)-1)*rEndpoint) # zero-based

    # Convert the drive commands into motor comands (zero-based)
    leftMtrCmd = yCmd + rCmd   # zero-based
    rightMtrCmd = yCmd - rCmd  # zero-based
    midMtrCmd = xCmd           # zero-based

    # Add an offset for the minimum command to overcome the gearboxes
    if leftMtrCmd > 0:
        leftMtrCmd = leftMtrCmd + leftMtrBaseCmd
    elif leftMtrCmd < 0:
        leftMtrCmd = leftMtrCmd - leftMtrBaseCmd
    if rightMtrCmd > 0:
        rightMtrCmd = rightMtrCmd + rightMtrBaseCmd
    elif rightMtrCmd < 0:
        rightMtrCmd = rightMtrCmd - rightMtrBaseCmd
    if midMtrCmd > 0:
        midMtrCmd = midMtrCmd + midMtrBaseCmd
    elif midMtrCmd < 0:
        midMtrCmd = midMtrCmd - midMtrBaseCmd

    # print("L: ", leftMtrCmd, " R: ", rightMtrCmd, " M: ", midMtrCmd)

    # If the commands are greater than the maximum or less than the minimum, scale them back
    maxMtrCmd = max(leftMtrCmd, rightMtrCmd, midMtrCmd)
    minMtrCmd = min(leftMtrCmd, rightMtrCmd, midMtrCmd)
    scaleFactor = 1.0
    if maxMtrCmd > maxCommand or minMtrCmd < minCommand:
        if maxMtrCmd > abs(minMtrCmd):
            scaleFactor = float(maxCommand) / float(maxMtrCmd)
        else:
            scaleFactor = float(minCommand) / float(minMtrCmd)

    # print("maxMtrCmd: ", maxMtrCmd, " minMtrCmd: ", minMtrCmd, " maxCommand: ", maxCommand, " minCommand: ", minCommand, " scaleFactor: ", scaleFactor)

    leftMtrCmdScaled = leftMtrCmd * scaleFactor
    rightMtrCmdScaled = rightMtrCmd * scaleFactor
    midMtrCmdScaled = midMtrCmd * scaleFactor

    # print("L scaled: ", leftMtrCmd, " R scaled: ", rightMtrCmd, " M scaled: ", midMtrCmd)

    # Shift the commands to be based on the zeroCommand (above)
    leftMtrCmdFinal = int(leftMtrCmdScaled + zeroCommand)
    rightMtrCmdFinal = int(rightMtrCmdScaled + zeroCommand)
    midMtrCmdFinal = int(midMtrCmdScaled + zeroCommand)

    return {'left':leftMtrCmdFinal, 'right':rightMtrCmdFinal, 'mid':midMtrCmdFinal}


def cleanup():

    print("Cleaning up and exiting")
    ser = serial.Serial(comPort, 57600, timeout=1)
    ser.write(b'\xFF')
    ser.write(b'\x00')
    ser.write(b'\x00')
    ser.write(b'\x00')
    ser.write(b'\x00')

    # ser.write(startByte.to_bytes(1, byteorder='big'))
    # ser.write(b'\x00')
    # ser.write(b'\x00')
    # ser.write(b'\x00')
    # ser.write(b'\x00')
    # ser.write(b'\x00\x00')
    ser.close()
    exit() 


if __name__ == '__main__':
    sys.exit(int(main() or 0))
