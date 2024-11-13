from PIL import Image
import shutil
import os 
from sklearn.model_selection import train_test_split
import numpy as np
import matplotlib.pyplot as plt
from keras.utils import to_categorical, normalize
from keras.models import Sequential, Model, load_model
from keras.layers import Dense, Conv2D, Flatten, MaxPooling2D, Dropout, GlobalAveragePooling2D, AveragePooling2D, GlobalMaxPooling2D
from keras.regularizers import l1_l2, L2, L1
from keras.preprocessing.image import ImageDataGenerator

from keras.layers import BatchNormalization
from keras.layers import PReLU
from keras.layers import LeakyReLU
from keras.backend import sigmoid
from keras.applications import ResNet50, VGG16
from keras.callbacks import ReduceLROnPlateau, EarlyStopping, LearningRateScheduler, ModelCheckpoint
from keras.optimizers import Adam, SGD, RMSprop
from keras.losses import binary_crossentropy, sparse_categorical_crossentropy, categorical_crossentropy
from sklearn.utils.class_weight import compute_class_weight

from imblearn.over_sampling import SMOTE
from sklearn.model_selection import train_test_split
from sklearn.utils import shuffle
import tensorflow as tf
from sklearn.model_selection import GridSearchCV
from skkeras import KerasClassifier

import cv2




def cnn(X_train, X_test, Y_train, Y_test, X_val, Y_val,size):


    model = Sequential()
    
    model.add(Conv2D(filters=32,kernel_size=(3,3),activation='relu',input_shape=(size,size,3),kernel_initializer = 'he_uniform',kernel_regularizer=L2(0.0001)))
    model.add(MaxPooling2D(2,2))
    model.add(Dropout(0.25))
    model.add(BatchNormalization())

    model.add(Conv2D(filters=64,kernel_size=(3,3),activation='relu',kernel_initializer = 'he_uniform',kernel_regularizer=L2(0.0001)))
    model.add(MaxPooling2D(2,2))
    model.add(Dropout(0.25))
    model.add(BatchNormalization())

    model.add(Conv2D(filters=128,kernel_size=(3,3),activation='relu',kernel_initializer = 'he_uniform',kernel_regularizer=L2(0.0001)))
    model.add(MaxPooling2D(2,2))
    model.add(Dropout(0.35))
    model.add(BatchNormalization())


    model.add(Flatten())
    model.add(Dense(units=128,activation='relu',kernel_regularizer=L2(0.0001)))
    #model.add(Dense(units=84,activation='relu',kernel_regularizer=L2(0.0001)))
    model.add(Dropout(0.5))
    model.add(BatchNormalization())
    model.add(Dense(units=2,activation='softmax'))

    early_stopping = EarlyStopping(monitor='val_loss', patience=20)
    reduce_lr = ReduceLROnPlateau(monitor='val_loss', factor=0.2, patience=10, min_lr=0.0001)

    op = Adam(learning_rate=0.0001)
    #op = SGD(learning_rate=0.001)
    model.compile(optimizer=op, loss='categorical_crossentropy', metrics=['accuracy'])

        
    history = model.fit(X_train,Y_train, epochs=20,batch_size=64, validation_data=(X_test,Y_test),callbacks = [early_stopping,reduce_lr])  #class_weight=class_weight)
    #history = model.fit(X_train,Y_train, epochs=15, validation_data=(X_val, Y_val))

    loss, accuracy = model.evaluate(X_test, Y_test)

    print(accuracy)

    # dir = "C:/Users/RAYAN/OneDrive/Desktop/SeniorDesign"
    # os.chdir(dir)
    # model.save("cnn.h5")

    # p = "C:/Users/RAYAN/OneDrive/Desktop/SeniorDesign/graphs_test"


    plt.plot(history.history["accuracy"])
    plt.plot(history.history["val_accuracy"])
 

    plt.title("model accuracy")
    plt.ylabel("accuracy")
    plt.xlabel("epoch")
    plt.legend(["train","validation"],loc="upper left")

    #plt.savefig(p+r"/accuracy.jpg")

    plt.show()
    plt.close()
















        # model.add(Conv2D(filters=32,kernel_size=(3,3),activation='relu',input_shape=(size,size,3),kernel_initializer = 'he_uniform',kernel_regularizer=L2(0.0005)))
    # model.add(MaxPooling2D(2,2))
    # model.add(Dropout(0.3))
    # model.add(BatchNormalization())

    # model.add(Conv2D(filters=64,kernel_size=(3,3),activation='relu',kernel_initializer = 'he_uniform',kernel_regularizer=L2(0.0005)))
    # model.add(MaxPooling2D(2,2))
    # model.add(Dropout(0.3))
    # model.add(BatchNormalization())

    # model.add(Conv2D(filters=128,kernel_size=(3,3),activation='relu',kernel_initializer = 'he_uniform',kernel_regularizer=L2(0.0005)))
    # model.add(MaxPooling2D(2,2))
    # model.add(Dropout(0.3))
    # model.add(BatchNormalization())


    # model.add(Flatten())
    # model.add(Dense(units=256,activation='relu',kernel_regularizer=L2(0.0005)))
    # model.add(Dense(units=128,activation='relu',kernel_regularizer=L2(0.0005)))
    # model.add(Dense(units=84,activation='relu',kernel_regularizer=L2(0.0005)))
    # model.add(Dropout(0.5))
    # model.add(BatchNormalization())
    # model.add(Dense(units=3,activation='softmax'))

    # early_stopping = EarlyStopping(monitor='val_loss', patience=20)
    # reduce_lr = ReduceLROnPlateau(monitor='val_loss', factor=0.2, patience=10, min_lr=0.0001)

    # op = Adam(learning_rate=0.0001)
    # model.compile(optimizer=op, loss='categorical_crossentropy', metrics=['accuracy'])

        
    # history = model.fit(X_train,Y_train, epochs=30,batch_size=64, validation_data=(X_test,Y_test),callbacks = [early_stopping,reduce_lr])  #class_weight=class_weight)