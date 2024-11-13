import numpy as np
import os 
from PIL import Image
import joblib 

def load_images(folder_path):
    images = []
    for filename in os.listdir(folder_path):
        if filename.endswith(".jpg"):
            img = Image.open(os.path.join(folder_path, filename)).convert('L')  
            img_array = np.array(img.resize((100, 100))).flatten()  
            images.append(img_array)
    return np.array(images)

def FRU():
    input_dir = "/home/ece1896team2/Documents/SeniorDesign/Images_Live"
    verified = False
    recognizer= joblib.load('/home/ece1896team2/Documents/SeniorDesign/svm_model.joblib')
    images = []
    os.chdir(input_dir)
    X_live = []
    images_live = load_images(input_dir)
    X_live.extend(images_live)
    y_predict = recognizer.predict(X_live)

    majority = np.bincount(y_predict).argmax()
    if majority == 1:
        print("VERIFIED")
        verified=True
    else:
        print("UNVERIFIED")
        verified = False
    return verified




