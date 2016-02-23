#!/usr/bin/env python

import pygame
import time
import os
import serial

# Global variables
startByte = 0xFF

def main():

    # Initialize the serial port
    ser = serial.Serial('/dev/ttyUSB0', 57600, timeout=1)
    os.environ["SDL_VIDEODRIVER"] = "dummy"

    # Initialize the gamepad
    pygame.init()
    joysticks = []
    for i in range(0, pygame.joystick.get_count()):
        joysticks.append(pygame.joystick.Joystick(i))
        joysticks[-1].init()
        print "Detected joystick '",joysticks[-1].get_name(),"'"

    # Local variables
    prevMtrCmds = {'left':0, 'right':0, 'mid':0}
    prevTimeSent = 0
    done = False

    try:
        while done == False:

            pygame.event.pump() # This line is needed to process the gamepad packets

            # Get the raw values for translation/rotation using the joysticks
            xRaw = joystick.get_axis(2) # X-axis translation comes from the left joystick X axis
            yRaw = joystick.get_axis(1) # Y-axis translation comes from the left joystick Y axis
            rRaw = joystick.get_axis(0) # rotation comes from the right joystick X axis

            # Get the motor commands for H-Drive
            mtrCmds = hDrive(xRaw, yRaw, rRaw)

            # Only send if the commands changed or if 500ms have elapsed
            if prevMtrCmds['left'] != mtrCmds['left'] or
               prevMtrCmds['right'] != mtrCmds['right'] or
               prevMtrCmds['mid'] != mtrCmds['mid'] or
               time.time()*1000 > prevTimeSent + 200 :

                checksum = mtrCmds['left'] + mtrCmds['right'] + mtrCmds['mid']
                print "Sending... L: ", left, ", R: ", right, ", M: ", mid, ",  CS: ", checksum
                ser.write(chr(startByte))
                ser.write(chr(mtrCmds['left']))
                ser.write(chr(mtrCmds['right']))
                ser.write(chr(mtrCmds['mid']))
                ser.write(int(checksum)) # TODO: fingure out how to explicitly send a two-byte integer

                prevMtrCmds = mtrCmds
                prevTimeSent = time.time()*1000
                time.sleep(.05)
    except KeyboardInterrupt:
        cleanup()


def hDrive(xIn, yIn, rIn):
    
    # Set drive command range constants
    zeroCommand = 128  # the default value that corresponds to no motor power
    cmdRange = 128     # the maximum amount (+/-) that the command can vary from the zero command
    maxCommand = zeroCommand + cmdRange
    minCommand = zeroCommand - cmdRange

    # Set constants for the exponential functions for each drive command (x/y/r)
    endExpConst = 1.44 # don't change this unless you've really looked over the math

    xExpConst = 1.5  # exponential growth coefficient of the X-axis translation -- should be between 1.0-4.0
    xEndpoint = 128  # maximum/minumum (+/-) for the X-axis translation

    yExpConst = 1.5  # exponential growth coefficient of the Y-axis translation -- should be between 1.0-4.0
    yEndpoint = 128  # maximum/minumum (+/-) for the Y-axis translation

    rExpConst = 1.5  # exponential growth coefficient of the R-axis translation -- should be between 1.0-4.0
    rEndpoint = 128  # maximum/minimum (+/-) for the rotation

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
    
    # Compute the drive commands using the exponential function (zero-based)
    xCmd = int(xNeg*(math.pow(math.e,math.pow(math.fabs(xIn),xExpConst)/endExpConst)-1)*xEndpoint) # zero-based
    yCmd = int(yNeg*(math.pow(math.e,math.pow(math.fabs(yIn),yExpConst)/endExpConst)-1)*yEndpoint) # zero-based
    rCmd = int(rNeg*(math.pow(math.e,math.pow(math.fabs(rIn),xExpConst)/endExpConst)-1)*rEndpoint) # zero-based

    # Convert the drive commands into motor comands (zero-based)
    leftMtrCmd = yCmd + rCmd   # zero-based
    rightMtrCmd = yCmd - rCmd  # zero-based
    midMtrCmd = xCmd           # zero-based

    # If the commands are greater than the maximum or less than the minimum, scale them back
    maxMtrCmd = max(leftMtrCmd, rightMtrCmd, midMtrCmd)
    minMtrCmd = min(leftMtrCmd, rightMtrCmd, midMtrCmd)
    scaleFactor = 1.0
    if maxMtrCmd > maxCommand or minMtrCmd < minCommand:
        if maxMtrCmd > abs(minMtrCmd):
            scaleFactor = maxCommand / maxMtrCmd
        else:
            scaleFactor = minCommand / minMtrCmd

    leftMtrCmdScaled = leftMtrCmd * scaleFactor
    rightMtrCmdScaled = rightMtrCmd * scaleFactor
    midMtrCmdScaled = midMtrCmd * scaleFactor 

    # Shift the commands to be based on the zeroCommand (above)
    leftMtrCmdFinal = leftMtrCmd + zeroCommand
    rightMtrCmdFinal = rightMtrCmd + zeroCommand
    midMtrCmdFinal = midMtrCmd + zeroCommand

    return {'left':leftMtrCmdFinal, 'right':rightMtrCmdFinal, 'mid':midMtrCmdFinal}


def cleanup():

    print "Cleaning up and exiting"
    ser.close()
    exit() 
