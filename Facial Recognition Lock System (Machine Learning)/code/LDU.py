from picamera2 import Picamera2, Preview
import time
import cv2
import dlib
from imutils import face_utils
from scipy.spatial import distance as dist
import math
import numpy as np
import os

# Load HAAR face classifier
face_classifier = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

# Load functions
def face_extractor(img):
    #img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    faces = face_classifier.detectMultiScale(img, 1.3, 5)
    
    if len(faces) == 0:
        return None
    
    for (x, y, w, h) in faces:
        cropped_face = img[y:y+h, x:x+w]
    return cropped_face

def clear_directory(directory_path):
    # Check if the directory exists
    if os.path.exists(directory_path):
        # Remove all files and subdirectories in the specified directory
        for item in os.listdir(directory_path):
            item_path = os.path.join(directory_path, item)
            if os.path.isfile(item_path):
                os.remove(item_path)
            else:
                shutil.rmtree(item_path)
    else:
        print(f"Directory '{directory_path}' does not exist.")


def ldu():
    def calculate_EAR(eye):
        y1 = dist.euclidean(eye[1],eye[5])
        y2 = dist.euclidean(eye[2],eye[4])
        x1 = dist.euclidean(eye[0],eye[3])
        EAR = (y1+y2) / x1
        return EAR

    blink_thresh = 0.45
    succ_frame = 2
    count_frame = 0
    blink_counter = 0

    (L_start, L_end) = face_utils.FACIAL_LANDMARKS_IDXS["left_eye"] 
    (R_start, R_end) = face_utils.FACIAL_LANDMARKS_IDXS['right_eye'] 


    detector = dlib.get_frontal_face_detector() 
    landmark_predict = dlib.shape_predictor('/home/ece1896team2/Documents/SeniorDesign/shape_predictor_68_face_landmarks.dat') 

    face_cascade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
    piCam = Picamera2()
    piCam.preview_configuration.main.size=(1280,720)
    piCam.framerate = 500
    piCam.preview_configuration.main.format = "RGB888"
    piCam.preview_configuration.align()
    piCam.configure("preview")
    piCam.start()
    start_time = time.time()
    while True:
        frame=piCam.capture_array()
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        faces_ = detector(frame)
        for face in faces_: 
            shape = landmark_predict(frame, face) 
            shape = face_utils.shape_to_np(shape) 

            lefteye = shape[L_start: L_end] 
            righteye = shape[R_start:R_end] 

            # Calculate the EAR 
            left_EAR = calculate_EAR(lefteye) 
            right_EAR = calculate_EAR(righteye) 

            # Avg of left and right eye EAR 
            avg = (left_EAR+right_EAR)/2

            
            if avg < blink_thresh: 
                blink_counter+=1
                count_frame += 1  
               
            else: 
                
                if count_frame >= succ_frame: 
                    cv2.putText(frame, 'Blink Detected', (30, 30),cv2.FONT_HERSHEY_DUPLEX, 1, (0, 200, 0), 1) 
                    break
                else: 
                    count_frame = 0

        t = time.time() - start_time

        cv2.imshow("Head Movements Detection", frame)
        if (cv2.waitKey(1) & 0xFF == ord('q')) or t>=10:
            if blink_counter>=1:
                directory_path = '/home/ece1896team2/Documents/SeniorDesign/Images_Live'
                clear_directory(directory_path)
                for i in range(20):
                    filename = f'/home/ece1896team2/Documents/SeniorDesign/Images_Live/images_{i}.jpg'
                    im = piCam.capture_array()
                    #im = face_extractor(im)
                    try:
                        im = cv2.resize(face_extractor(im), (400, 400))
                    except cv2.error:
                        print("Error: Put head in Frame")
                        
                    cv2.imwrite(filename,im)
                    #time.sleep(1)
                cv2.destroyAllWindows()
                real=True
                #real = checks_()
                break
            else:
                print("NOT LIVE")
                real = False
                break
    piCam.close()
        
    cv2.destroyAllWindows()
    print("Real: ",real)
    return real





