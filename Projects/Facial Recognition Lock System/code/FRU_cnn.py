from CNN import cnn

import numpy as np
from PIL import Image
import cv2
import os 
from keras.utils import to_categorical
from SVM import SVM
from data_folders import get_input
import time
size = 32
channel = 3

X_train, Y_train, X_test, Y_test, X_val, Y_val = get_input(size, channel)



X_train = np.reshape(X_train, (len(X_train),size,size,channel)) 
X_test = np.reshape(X_test, (len(X_test),size,size,channel)) 
X_val = np.reshape(X_val, (len(X_val),size,size,channel)) 

# X_train = X_train / 255.0
# X_test = X_test / 255.0
# X_val = X_val / 255.0

Y_train = to_categorical(Y_train)
Y_test = to_categorical(Y_test)
Y_val = to_categorical(Y_val)

start = time.time()
cnn(X_train, X_test, Y_train, Y_test, X_val, Y_val, size)
stop = time.time()

print(stop-start)