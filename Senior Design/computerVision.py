import cv2
import os 
from LDU import ldu
from FRU import FRU
from ExtractImages import extract_images
from gpiozero import LED, MotionSensor, OutputDevice
import time
import RPi.GPIO as GPIO
from signal import pause
from Machine_Learning import train

# def sensor():
	# channel = 2
	# GPIO.setmode(GPIO.BCM)
	# GPIO.setup(channel,GPIO.IN)
	# sensor_=False
	# while True:
		# if GPIO.input(channel)==GPIO.LOW:
			# print("Motion Detected")
			# time.sleep(1)
			# sensor_=True
			# GPIO.cleanup()
            # break
    # return sensor_
    

def on_motion():

    print("Motion Detected")
    return sensor
        

    



# GPIO.setmode(GPIO.BCM)
# green = 17
# red = 18

def main():
    red_led = LED(18)
    green_led = LED(17)
    ms = MotionSensor(27)
    solenoid = OutputDevice(4)


    while ms.motion_detected == True:
        print("No Motion")
        
        
    if ms.motion_detected == False:
        print("Motion Detected")
        LDU_check = ldu()

        if LDU_check == True:
            FRU_check = FRU()

            if FRU_check == True:
                print("unlock")
                green_led.on()
                solenoid.on()
                time.sleep(7)
                green_led.off()
                green_led.close()
                solenoid.off()
                solenoid.close()
                # GPIO.setup(green, GPIO.IN)
                # GPIO.output(green,GPIO.HIGH)
                # time.sleep(7)
                # GPIO.output(green,GPIO.LOW)
                # GPIO.cleanup()
                
            else:
                print("lock")
                red_led.on()
                time.sleep(7)
                red_led.off()
                red_led.close()
                # GPIO.setup(red, GPIO.IN)
                # GPIO.output(red,GPIO.HIGH)
                # time.sleep(7)
                # GPIO.output(red,GPIO.LOW)
                # GPIO.cleanup()

            
        else:
            print("lock")
            red_led.on()
            time.sleep(7)
            red_led.off()
            red_led.close()
            # GPIO.setup(red, GPIO.IN)
            # GPIO.output(red,GPIO.HIGH)
            # time.sleep(7)
            # GPIO.output(red,GPIO.LOW)
            # GPIO.cleanup()



# if __name__ == "__main__":
    # main()
    # print("done")

try:
    # # extract_images()
    # # print("finished capturing 500 images")
    # start = time.time()
    # train()
    # end = time.time()
    # print("Time taken to train the algorithm",end-start," seconds")
    # time.sleep(4)
    while True: 
        if __name__ == "__main__":
            main()
            print("done")
        
        time.sleep(1)

        
    
except RuntimeError:
    print("wait")
