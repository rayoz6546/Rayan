import cv2
import numpy as np
import os 
from PIL import Image
import matplotlib.pyplot as plt
import shutil
from keras.preprocessing.image import ImageDataGenerator
import cv2
import os

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



def augment_images(size, channel, input_dir, num_augmentations):

        

    augmentation_settings = [
        {"rotation_range": 11, "width_shift_range": 0.1, "height_shift_range": 0.1, "horizontal_flip": False,
         "shear_range": 0.1, "zoom_range": 0, "fill_mode": "nearest"},
        {"rotation_range": 10, "width_shift_range": 0.2, "height_shift_range": 0.2, "horizontal_flip": False,
         "shear_range": 0.1, "zoom_range": 0.1, "fill_mode": "nearest"},
        {"rotation_range": 15, "width_shift_range": 0.2, "height_shift_range": 0.2, "horizontal_flip": False,
         "shear_range": 0.1, "zoom_range": 0.1, "fill_mode": "nearest"}
    ]



    os.makedirs(input_dir, exist_ok=True)
    
    datagen1 = ImageDataGenerator(rotation_range=15,width_shift_range=0.2,height_shift_range=0.2,shear_range=0.1,zoom_range=0.1,horizontal_flip=False,fill_mode='nearest')
    datagen2 = ImageDataGenerator(rotation_range=11,width_shift_range=0.1,height_shift_range=0.1,shear_range=0.1,zoom_range=0.1,horizontal_flip=False,fill_mode='nearest')
    datagen3 = ImageDataGenerator(rotation_range=10,width_shift_range=0.2,height_shift_range=0.2,shear_range=0.1,zoom_range=0.1,horizontal_flip=False,fill_mode='nearest')
    datagen4 = ImageDataGenerator(rotation_range=14,width_shift_range=0.15,height_shift_range=0.15,shear_range=0.1,zoom_range=0.1,horizontal_flip=False,fill_mode='nearest')
    datagen5 = ImageDataGenerator(rotation_range=13,width_shift_range=0.2,height_shift_range=0.2,shear_range=0.2,zoom_range=0.2,horizontal_flip=False,fill_mode='nearest')
    
    datagen = [datagen1,datagen2,datagen3,datagen4,datagen5]

    for file_name in os.listdir(input_dir):
        input_path = os.path.join(input_dir, file_name)
        img = Image.open(input_path).convert("RGB")
        img = img.resize((size, size), Image.BILINEAR)

        image_data = np.array(img, dtype=np.uint8)
        image_data = np.reshape(image_data, (1, size, size, channel))
        
        for i in range(num_augmentations):
            augmented_image = datagen[i].flow(image_data, batch_size=1)
            augmented_image = augmented_image[0]
            
            output_path = os.path.join(input_dir, f"{os.path.splitext(file_name)[0]}_{i+1}.jpg")
            augmented_image = Image.fromarray(augmented_image.squeeze().astype(np.uint8))
            augmented_image.save(output_path)

def main():
    current_path = os.getcwd()
    input_dir = os.path.join(current_path, "images", "0")
    

    
    clear_directory(input_dir)

    # Capture 500 images of the user
    cap = cv2.VideoCapture(0)
    count = 0
    c = 0

    while True:
        ret, frame = cap.read()
        if face_extractor(frame) is not None:
            count += 1
            c += 1
            face = cv2.resize(face_extractor(frame), (400, 400))

            file_name_path = os.path.join(input_dir, f"1_{c}.jpg")
            cv2.imwrite(file_name_path, face)

            cv2.putText(face, str(count), (50, 50), cv2.FONT_HERSHEY_COMPLEX, 1, (0, 255, 0), 2)
            cv2.imshow('Face Cropper', face)
        else:
            print("Face not found")
        
        if cv2.waitKey(1) == 13 or count == 500:
            break

    cap.release()
    cv2.destroyAllWindows()
    print("Collecting Samples Complete")

    # Generate 1500 augmented images
    augment_images(200, 3, input_dir, num_augmentations=3)

if __name__ == "__main__":
    main()
