import os
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score
from PIL import Image
import joblib
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA

def train():
    def load_images(folder_path):
        images = []
        for filename in os.listdir(folder_path):
            if filename.endswith(".jpg"):
                img = Image.open(os.path.join(folder_path, filename)).convert('L')  
                img_array = np.array(img.resize((100, 100))).flatten()  
                images.append(img_array)


        return np.array(images)

    current_path = "C:/Users/RAYAN/OneDrive/Desktop/SeniorDesign/"
    d = os.path.join(current_path,r"images")
    authorized_path = os.path.join(d,r"0")
    unauthorized_path = os.path.join(d,r"1")


    X_data, Y_data = [], []

    os.chdir(authorized_path)

    images1 = load_images(authorized_path)
    X_data.extend(images1)
    n = len(images1)
    l1 = [1]*n
    l1 = np.array(l1)
    Y_data.extend(l1)

    os.chdir(unauthorized_path)

    images2 = load_images(unauthorized_path)
    X_data.extend(images2)
    n = len(images2)
    l2 = [0]*n
    l2 = np.array(l2)
    Y_data.extend(l2)

    X_data = np.array(X_data)
    y_data = np.array(Y_data)

    X_train, X_test, Y_train, Y_test = train_test_split(X_data, Y_data, test_size=0.2, shuffle=True)

    scaler = StandardScaler()
    X_train_scaler = scaler.fit_transform(X_train)
    X_test_scaler = scaler.transform(X_test)

    pca = PCA(n_components=100)
    X_train_pca = pca.fit_transform(X_train_scaler)
    X_test_pca = pca.transform(X_test_scaler)

    model = SVC(kernel='poly', degree=3, C=0.2)
    model.fit(X_train_pca, Y_train)

    # Training accuracy
    Y_train_pred = model.predict(X_train_pca)
    training_accuracy = accuracy_score(Y_train, Y_train_pred)
    print("Training accuracy: ", training_accuracy*100, "%")

    # Testing accuracy
    y_pred = model.predict(X_test_pca)
    testing_accuracy = accuracy_score(Y_test, y_pred)
    print("Testing accuracy: ", testing_accuracy*100, "%")

    model_filename = '/home/ece1896team2/Documents/SeniorDesign/svm_model.joblib'
    joblib.dump(model, model_filename)
