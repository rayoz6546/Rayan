import cv2
import os 

def extract_images():

    video = cv2.VideoCapture("/home/ece1896team2/Documents/SeniorDesign/user.webm")

    currentFrame = 0
    # Load HAAR face classifier
    face_classifier = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

    # Load functions
    def face_extractor(img):
        faces = face_classifier.detectMultiScale(img, 1.3, 5)
        
        if len(faces) == 0:
            return None
        
        for (x, y, w, h) in faces:
            cropped_face = img[y:y+h, x:x+w]
        return cropped_face
    while True: 
        ret, frame = video.read()

        if currentFrame!=500: 
            if face_extractor(frame) is not None:
                name = '1_' + str(currentFrame) + '.jpg'
                print("creating...",name)
                directory = "/home/ece1896team2/Documents/SeniorDesign/training_images/0/" + name
                face = cv2.resize(face_extractor(frame), (400, 400))
                cv2.imwrite(directory,face)
                currentFrame +=1
            else:
                print("Face not found")
        else:
            break

    video.release()
    cv2.destroyAllWindows()
