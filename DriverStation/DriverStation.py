#!/usr/bin/env python

from enum import Enum
import pygame
import time
import os
import serial
import array
import sys
import math

# To check what serial ports are available in Linux, use the bash command: dmesg | grep tty
# To check what serial ports are available in Windows, use the cmd command: wmic path Win32_SerialPort
#    OR go to Device Manager > Ports (COM & LPT)
comPort = 'COM5'

### CONTROL SCHEME ###
# Drive:
#   Arcade Drive, i.e.
#     Left joystick Y-axis -- forward/reverse
#     Right joystick X-axis -- turn/arc
#
# Arm:
#  In manual mode...
#    Right trigger -- arm up (analog control)
#    Right bumper -- arm up (fixed power)
#    Left trigger -- arm down (analog control)
#    Left bumper -- arm down (fixed power)
#    A button -- enter auto mode
#    Start button -- consider the current position the new "down" position for auto mode
#  In auto mode...
#    Nothing -- arm goes to "down" position
#    Hold one bumper (either one) -- arm goes to "over bumps" position
#    Hold both bumpers -- arm goes to "up" position
#    Press either trigger -- kick out to manual mode
#######################

# Set the channel numbers for various controls
BUTTON_IDS_ARM_AUTO = [4, 5]  # Buttons used to control arm in auto mode
BUTTON_ID_ENTER_AUTO = 0  # Button used to revert back to auto mode
BUTTON_ID_RESET_ARM_POS = 7  # Button used to zero the arm position
BUTTON_ID_SEND_PID_GAINS = 6  # Button used to transmit the PID gains stored in this script
                              # (different from what the robot might have as its own defaults)
AXIS_ID_ARM_MANUAL = 2  # Analog triggers for manual arm control
BUTTON_ID_ARM_MANUAL_UP = 5  # Button used to move the arm up in manual mode
BUTTON_ID_ARM_MANUAL_DOWN = 4  # Button used to move the arm down in manual mode
BUTTON_ID_STOP_PROGRAM = 1

class ArmMode(Enum):
    AUTO = 0
    MANUAL = 1

class ArmAutoHeight(Enum):
    DOWN = 0
    OVER_BUMPS = 1
    UP = 2

# Set the preset values for automatic arm control
ARM_POS_DOWN = 0
ARM_POS_OVER_BUMPS = 20
ARM_POS_UP = 80

# Set the PID gains (only transmitted when hitting the "send PID gains" button)
PID_ERROR_OR_MEASUREMENT = 'E'  # 'E' for error, 'M' for measurement
PID_P_GAIN = "0.1"  # Must be a double in string format
PID_I_GAIN = "0"  # Must be a double in string format
PID_D_GAIN = "0"  # Must be a double in string format
ARM_SCALE_FACTOR = "40"  # Must be a double in string format

# Set the reserved values for communicating special signals to the robot.
# NOTE: Reserved values are selected around 127 ("zero motor power") since those values are rarely
#       used because it takes more power than that to overcome the motor and gearbox resistance.
RESERVED_VALUES_MAX = 126  # The highest reserved value
RESERVED_VALUES_MIN = 123  # The lowest reserved value
RESERVED_VALUE_ENTER_ARM_AUTO = 124
RESERVED_VALUE_ENTER_ARM_MANUAL = 125
RESERVED_VALUE_RESET_ARM_POS = 123
RESERVED_VALUE_SET_PID_GAINS = 126

# Set the number of times to transmit each mode change message
RESEND_COUNT_MODE_CHANGE = 3

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
    prevDriveMtrCmds = {'left':0, 'right':0}
    prevArmCmd = 0
    prevArmFlags = 0
    prevTimeSent = 0
    prevArmMode = ArmMode.MANUAL
    currArmMode = ArmMode.MANUAL
    transmitXTimes = 0
    done = False
    loopCounter = 0

    try:
        while (done == False):

            pygame.event.pump()  # This line is needed to process the gamepad packets

            ##### WHEEL COMMANDS #####

            # Get the raw values for drive translation/rotation using the gamepad.
            yRaw = joysticks[0].get_axis(1)   # Y-axis translation comes from the left joystick Y axis
            rRaw = -joysticks[0].get_axis(4)  # Rotation comes from the right joystick X axis

            # Get the drive motor commands for Arcade Drive
            driveMtrCmds = arcadeDrive(yRaw, rRaw)

            # Protect against sending a reserved value
            if driveMtrCmds['left'] == RESERVED_VALUE_SET_PID_GAINS:
                driveMtrCmds['left'] = RESERVED_VALUE_SET_PID_GAINS + 1
            if driveMtrCmds['right'] == RESERVED_VALUE_SET_PID_GAINS:
                driveMtrCmds['right'] = RESERVED_VALUE_SET_PID_GAINS + 1

            ##########################

            ###### ARM COMMAND #######

            # Get the raw values for the arm using the gamepad
            armRawManual = -joysticks[0].get_axis(AXIS_ID_ARM_MANUAL)
            armManualUpBtn = joysticks[0].get_button(BUTTON_ID_ARM_MANUAL_UP)
            armManualDownBtn = joysticks[0].get_button(BUTTON_ID_ARM_MANUAL_DOWN)
            armAutoNumBtns = (1 if joysticks[0].get_button(BUTTON_IDS_ARM_AUTO[0]) else 0) + \
                               (1 if joysticks[0].get_button(BUTTON_IDS_ARM_AUTO[1]) else 0)
            if armAutoNumBtns == 0:
                armAutoHeight = ArmAutoHeight.DOWN
            elif armAutoNumBtns == 1:
                armAutoHeight = ArmAutoHeight.OVER_BUMPS
            else:  # armAutoNumBtns == 2
                armAutoHeight = ArmAutoHeight.UP
            armBtnEnterAuto = joysticks[0].get_button(BUTTON_ID_ENTER_AUTO)
            armBtnZero = joysticks[0].get_button(BUTTON_ID_RESET_ARM_POS)
            armBtnSendPIDGains = joysticks[0].get_button(BUTTON_ID_SEND_PID_GAINS)

            (rawArmCmd, currArmMode) = armDrive(armRawManual, armManualUpBtn, armManualDownBtn, \
                                           armAutoHeight, armBtnEnterAuto, prevArmMode)

            if transmitXTimes > 0:
                print("retransmitting... count = ", transmitXTimes)
                armCmd = prevArmCmd
            elif currArmMode == ArmMode.MANUAL and prevArmMode == ArmMode.AUTO:
                armCmd = RESERVED_VALUE_ENTER_ARM_MANUAL
                print("switching to manual mode")
                transmitXTimes = RESEND_COUNT_MODE_CHANGE
            elif currArmMode == ArmMode.AUTO and prevArmMode == ArmMode.MANUAL:
                armCmd = RESERVED_VALUE_ENTER_ARM_AUTO
                print("switching to auto mode")
                transmitXTimes = RESEND_COUNT_MODE_CHANGE
            elif armBtnZero:
                armCmd = RESERVED_VALUE_RESET_ARM_POS
                transmitXTimes = RESEND_COUNT_MODE_CHANGE
            elif armBtnSendPIDGains:
                armCmd = RESERVED_VALUE_SET_PID_GAINS
                # To reset the PID gains, all 3 motor commands (left, right, arm) need to be set to the reserved value
                driveMtrCmds['left'] = RESERVED_VALUE_SET_PID_GAINS
                driveMtrCmds['right'] = RESERVED_VALUE_SET_PID_GAINS
            else:
                if RESERVED_VALUES_MIN <= rawArmCmd and rawArmCmd <= RESERVED_VALUES_MAX:
                    armCmd = RESERVED_VALUES_MAX + 1
                else:
                    armCmd = rawArmCmd

            prevArmMode = currArmMode
            
            # armCmd = manualArmDrive(armRawManual)
            # if RESERVED_VALUES_MIN <= armCmd and armCmd <= RESERVED_VALUES_MAX:
            #     armCmd = RESERVED_VALUES_MAX + 1

            ##########################

           
            if joysticks[0].get_button(BUTTON_ID_STOP_PROGRAM):
                cleanup()
                done = True
             # Only send if the commands changed or if 50ms have elapsed
            elif prevDriveMtrCmds['left'] != driveMtrCmds['left'] or \
                 prevDriveMtrCmds['right'] != driveMtrCmds['right'] or \
                 prevArmCmd != armCmd or \
                 time.time()*1000 > prevTimeSent + 50:

                print("Sending... L: ", driveMtrCmds['left'], ", R: ", driveMtrCmds['right'], \
                          ", A: ", armCmd, ", loopCounter: ", loopCounter)
                loopCounter = loopCounter + 1
                ser.write(chr(255))  # Start byte
                ser.write(chr(driveMtrCmds['left']))
                ser.write(chr(driveMtrCmds['right']))
                ser.write(chr(armCmd))

                if driveMtrCmds['left'] == RESERVED_VALUE_SET_PID_GAINS and \
                   driveMtrCmds['right'] == RESERVED_VALUE_SET_PID_GAINS and \
                   armCmd == RESERVED_VALUE_SET_PID_GAINS:
                    checksum = int(0)
                    ser.write(PID_ERROR_OR_MEASUREMENT)
                    checksum += ord(PID_ERROR_OR_MEASUREMENT)

                    ser.write(chr(len(PID_P_GAIN)))
                    for i in range(0, len(PID_P_GAIN)):
                        ser.write(PID_P_GAIN[i])
                        checksum += ord(PID_P_GAIN[i])

                    ser.write(chr(len(PID_I_GAIN)))
                    for i in range(0, len(PID_I_GAIN)):
                        ser.write(PID_I_GAIN[i])
                        checksum += ord(PID_I_GAIN[i])

                    ser.write(chr(len(PID_D_GAIN)))
                    for i in range(0, len(PID_D_GAIN)):
                        ser.write(PID_D_GAIN[i])
                        checksum += ord(PID_D_GAIN[i])

                    ser.write(chr(len(ARM_SCALE_FACTOR)))
                    for i in range(0, len(ARM_SCALE_FACTOR)):
                        ser.write(ARM_SCALE_FACTOR[i])
                        checksum += ord(ARM_SCALE_FACTOR[i])

                    ser.write(chr(checksum & 0x0FF))

                prevDriveMtrCmds = driveMtrCmds
                prevArmCmd = armCmd
                prevTimeSent = time.time()*1000
                if transmitXTimes >= 0:
                    transmitXTimes -= 1
                time.sleep(0.01)

    except KeyboardInterrupt:
        cleanup()


################################################################################
## @brief  Function to compute the drive motor PWM values for Arcade Drive
## @param  yIn - raw joystick input from -1.0 to 1.0 for the Y-axis translation
## @param  rIn - raw joystick input from -1.0 to 1.0 for the rotation
## @return an array containing left and right motor commands
################################################################################
def arcadeDrive(yIn, rIn):
    
    # Set output command range constants
    zeroCommand = int(127)  # the default value that corresponds to no motor power
    cmdRange = int(127)     # the maximum amount (+/-) that the command can vary from the zero command
    maxCommand = cmdRange
    minCommand = -cmdRange

    # Set constants for the exponential functions for each input (y/r)
    endExpConst = 1.44 # don't change this unless you've really looked over the math

    yExpConst = 1.5  # exponential growth coefficient of the Y-axis translation -- should be between 1.0-4.0
    yEndpoint = 127  # maximum/minumum (+/-) for the Y-axis translation

    rExpConst = 1.5  # exponential growth coefficient of the rotation -- should be between 1.0-4.0
    rEndpoint = 50   # maximum/minimum (+/-) for the rotation

    # Set a deadband for the raw joystick input
    deadband = 0.10

    # Set a base command (within the command range above) to overcome gearbox resistance at low drive speeds
    leftMtrBaseCmd = int(2)
    rightMtrBaseCmd = int(3)

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
    yCmd = int(yNeg*(math.pow(math.e, math.pow(math.fabs(yIn), yExpConst)/endExpConst)-1)*yEndpoint) # zero-based
    rCmd = int(rNeg*(math.pow(math.e, math.pow(math.fabs(rIn), rExpConst)/endExpConst)-1)*rEndpoint) # zero-based

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

    leftdriveMtrCmdScaled = leftMtrCmd * scaleFactor
    rightdriveMtrCmdScaled = rightMtrCmd * scaleFactor

    # print("L scaled: ", leftdriveMtrCmdScaled, " R scaled: ", rightdriveMtrCmdScaled)

    # Shift the commands to be based on the zeroCommand (above)
    leftMtrCmdFinal = int(leftdriveMtrCmdScaled + zeroCommand)
    rightMtrCmdFinal = int(rightdriveMtrCmdScaled + zeroCommand)

    return {'left':leftMtrCmdFinal, 'right':rightMtrCmdFinal}


############################################################
## @brief  Function to compute the arm drive command
## @param  manualIn - raw analog trigger input from -1.0 to 1.0
## @param  manualUp - whether the manual up button is pressed
## @param  manualIn - whether the manual down button is pressed
## @param  autoHeight - the desired height (enum) of the arm for automatic control
## @param  enterAuto - whether to enter (or re-enter) automatic control
## @param  prevMode - mode of the arm from the previous iteration
## @return (the arm command, the arm mode)
############################################################
def armDrive(manualIn, manualUp, manualDown, autoHeight, enterAuto, prevMode):

    ZERO_COMMAND = 127        # the default value that corresponds to no motor power
    MANUAL_UP_BTN_CMD = 200   # the command when the manual up button is pressed
    MANUAL_DOWN_BTN_CMD = 50  # the command when the manual down button is pressed

    manualCmd = manualArmDrive(manualIn)
    
    if manualCmd != ZERO_COMMAND or (prevMode == ArmMode.MANUAL and not enterAuto):
        currMode = ArmMode.MANUAL
        if manualUp:
            armCmd = MANUAL_UP_BTN_CMD
        elif manualDown:
            armCmd = MANUAL_DOWN_BTN_CMD
        else: 
            armCmd = manualCmd
    else:  # manualCmd == 0 and (prevMode == ArmMode.AUTO or enterAuto)
        currMode = ArmMode.AUTO
        if autoHeight == ArmAutoHeight.DOWN:
            armCmd = ARM_POS_DOWN
        elif autoHeight == ArmAutoHeight.OVER_BUMPS:
            armCmd = ARM_POS_OVER_BUMPS
        else:  # autoHeight == ArmAutoHeight.UP
            armCmd = ARM_POS_UP

    return (armCmd, currMode)

############################################################
## @brief  Function to compute the manual arm drive command
## @param  aIn - raw input from -1.0 to 1.0
## @return the arm command
############################################################
def manualArmDrive(aIn):

    # Set output command range constants
    zeroCommand = int(127)  # the default value that corresponds to no motor power
    cmdRange = int(127)     # the maximum amount (+/-) that the command can vary from the zero command
    maxCommand = cmdRange
    minCommand = -cmdRange

    # Set constants for the exponential function
    endExpConst = 1.44 # don't change this unless you've really looked over the math

    expConst = 1.5  # exponential growth coefficient of the Y-axis translation -- should be between 1.0-4.0
    endpoint = 127  # maximum/minumum (+/-) for the Y-axis translation

    # Set a deadband for the raw joystick input
    deadband = 0.0

    # Set a base command (within the command range above) to overcome gearbox resistance at low drive speeds
    baseCmd = int(5)

    # Save the negative-ness, which will be re-applied after the exponential function is applied
    if aIn < 0:
        neg = -1
    else:
        neg = 1

    # Apply a deadband
    if abs(aIn) < deadband:
        aIn = 0
    
    # Compute the motor command using the exponential function (zero-based)
    aCmd = int(neg*(math.pow(math.e, math.pow(math.fabs(aIn), expConst)/endExpConst)-1)*endpoint) # zero-based

    # Add an offset for the minimum command to overcome the gearboxes
    if aCmd > 0:
        aCmd = aCmd + baseCmd
    elif aCmd < 0:
        aCmd = aCmd - baseCmd

    # If the command is greater than the maximum or less than the minimum, scale it back
    if aCmd > maxCommand:
        aCmd = maxCommand
    elif aCmd < minCommand:
        aCmd = minCommand

    # Shift the command to be based on the zeroCommand (above)
    aCmd = aCmd + zeroCommand

    return aCmd


############################################################
## @brief Zero all the commands to the robot and exit
############################################################
def cleanup():

    print("Cleaning up and exiting")
    ser = serial.Serial(comPort, 57600, timeout=1)
    ser.write(b'\xFF')
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
    pygame.quit()
    exit()


if __name__ == '__main__':
    sys.exit(int(main() or 0))
