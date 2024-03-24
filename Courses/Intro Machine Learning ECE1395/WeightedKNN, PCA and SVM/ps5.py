# -*- coding: utf-8 -*-
"""
Created on Tue Feb 28 09:41:49 2023

@author: RAYAN
"""

from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
from PIL import Image
import os
import numpy as np
import scipy as sp

from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score

from sklearn.multiclass import OneVsOneClassifier
from sklearn.multiclass import OneVsRestClassifier
import shutil
from sklearn import svm
import time
from scipy.io import loadmat
from weightedKNN import weightedKNN


# #-------------------------------------PART 1--------------------------------------------#
print("PART 1\n")
data=loadmat("hw4_data3.mat")
X = data["X_train"]
Xt = data["X_test"]
y_train= data["y_train"]
y_test = data["y_test"]

#add bias features for x_train and x_test
ones = np.array([1]*X.shape[0])
X_train = np.column_stack((ones,X))
ones = np.array([1]*Xt.shape[0])
X_test = np.column_stack((ones,Xt))

# determine y_pred and calculating accuracy for each value of sigma 
# sigma = 0.01
n = len(X_test)
y_pred = []
for i in range(n):
    y = weightedKNN(X_train,y_train,X_test[i],0.01)
    y_pred.append(y)     
y_pred = np.array(y_pred)
y_pred = np.reshape(y_pred,(n,1))
accuracy = 0
sum_=0
for j in range(n):
    if y_test[j]==y_pred[j]:
        sum_+=1
accuracy= sum_/n
print("Accuracy with sigma 0.01 is: ",accuracy)

# sigma = 0.05
y_pred=[]
for i in range(n):
    y = weightedKNN(X_train,y_train,X_test[i],0.05)
    y_pred.append(y)     
y_pred = np.array(y_pred)
y_pred = np.reshape(y_pred,(n,1))
accuracy = 0
sum_=0
for j in range(n):
    if y_test[j]==y_pred[j]:
        sum_+=1
accuracy= sum_/n
print("Accuracy with sigma 0.05 is: ",accuracy)

# sigma = 0.2
y_pred=[]
for i in range(n):
    y = weightedKNN(X_train,y_train,X_test[i],0.2)
    y_pred.append(y)     
y_pred = np.array(y_pred)
y_pred = np.reshape(y_pred,(n,1))
accuracy = 0
sum_=0
for j in range(n):
    if y_test[j]==y_pred[j]:
        sum_+=1
accuracy= sum_/n
print("Accuracy with sigma 0.2 is: ",accuracy)

# sigma = 1.5
y_pred=[]
for i in range(n):
    y = weightedKNN(X_train,y_train,X_test[i],1.5)
    y_pred.append(y)     
y_pred = np.array(y_pred)
y_pred = np.reshape(y_pred,(n,1))
accuracy = 0
sum_=0
for j in range(n):
    if y_test[j]==y_pred[j]:
        sum_+=1
accuracy= sum_/n
print("Accuracy with sigma 1.5 is: ",accuracy)

# sigma = 3.2
y_pred=[]
for i in range(n):
    y = weightedKNN(X_train,y_train,X_test[i],3.2)
    y_pred.append(y)     
y_pred = np.array(y_pred)
y_pred = np.reshape(y_pred,(n,1))
accuracy = 0
sum_=0
for j in range(n):
    if y_test[j]==y_pred[j]:
        sum_+=1
accuracy= sum_/n
print("Accuracy with sigma 3.2 is: ",accuracy)


#----------------------------------------PART 2------------------------------------------#

print("\nPART 2\n")
# In this part, I am randomly choosing training (80%) and testing (20%) images and placing them
# in the input/training and input/testing folders respectively. The variable "current_path"
# should get your current working directory. In this directory, you should have my "input"
# folder. The variables train_folder and test_folder are going to give you the path to 
# input\train and input\test folders, and d is going to give you the path to input\all folder.

# !!IMPORTANT!! Please note that I manually renamed all the files in each of the 40 folders
# in input\all (e.g: 1.pgm --> 1_1.pgm). So please make sure you are using my input folder not
# someone else's as there is no code that will rename the files automatically. 

# !!IMPORTANT!! If for some reason you are running into problems with the directories. 
# Please manually write the path to the corresponding folders (train_folder, test_folder,
# d). For example:
# train_folder = r"C:\Users\RAYAN\OneDrive\Desktop\input\train"
# test_folder = r"C:\Users\RAYAN\OneDrive\Desktop\input\test"
# d = r"C:\Users\RAYAN\OneDrive\Desktop\input\all"
# make sure to also manually write your current_path since other functions depend on it on the 
# code (mainly saving the figures)

def train_test_folders(directory):
    for images in os.listdir(directory):
        X_train, X_test= train_test_split(os.listdir(directory), train_size=0.8, shuffle=True)
    os.chdir(directory)
    shutil.copy(X_train[0],train_folder)
    shutil.copy(X_train[1],train_folder)
    shutil.copy(X_train[2],train_folder)
    shutil.copy(X_train[3],train_folder)
    shutil.copy(X_train[4],train_folder)
    shutil.copy(X_train[5],train_folder)
    shutil.copy(X_train[6],train_folder)
    shutil.copy(X_train[7],train_folder)
    shutil.copy(X_test[0],test_folder)
    shutil.copy(X_test[1],test_folder)

current_path = os.getcwd()
train_folder = os.path.join(current_path,r"input\train")
test_folder = os.path.join(current_path,r"input\test")
d = os.path.join(current_path,r"input\all")


# empty the folders every time to allow for new randomization
for f in os.scandir(train_folder):
    os.remove(f)

for f in os.scandir(test_folder):
    os.remove(f)

# call the function train_test_folders to iterate through every folder in d (input/all)
# and choose 8 files for training and 2 for testing (+ adding them to train and test folders)
for person in os.scandir(d):
    train_test_folders(os.path.join(d,person))


# displays the first image (ID=1) from the training folder and saves it
os.chdir(train_folder)
for i in os.listdir(train_folder):
    img = Image.open(i)
    os.chdir(current_path) # This is important because without it the same image will be 
                            # saved/added to the train folder and it will mess with its size
                            # again, if needed, please manually write your current working file
    img.show()
    img.save("ps5-2-0.png")
    img.close()
    break

# Compute matrix T
T = []
os.chdir(train_folder)
for image in os.listdir(train_folder):
    im = Image.open(image)
    im_matrix = np.array(im)
    im_matrix = np.reshape(im_matrix,(10304,1))
    T.append(im_matrix)
    im.close()
T = np.array(T)
T = np.reshape(T,(320,10304))

T=T.T  # This is T matrix (10304,320)

print("Size of T: ",T.shape)

img = Image.fromarray(T)
os.chdir(current_path)
img.save("ps5-2-1-a.png")
img.show()
img.close()


# Compute the mean (average face vector)
m = []
for i in range(T.shape[0]):
    cnt=0
    avg=0
    for j in range(T.shape[1]):
        cnt+=T[i][j]
    avg = cnt/T.shape[1]
    m.append(avg)
    
m=np.array(m)
m=np.reshape(m,(10304,1))
avg_vector=np.reshape(m,(112,92))

plt.imshow(avg_vector)
os.chdir(current_path)
plt.savefig("ps5-2-1-b.png")
plt.show()
plt.close()

T=T.T # now T is (320,10304)
A=[]
m = np.reshape(m,(1,10304)) # now m is (1,10304)
for col in T:
    A.append(col-m)

A = np.array(A)
A = np.reshape(A,(320,10304))
A=A.T

# Find covariance matrix
C = np.matmul(A,A.T)
plt.imshow(C)
os.chdir(current_path)
plt.savefig("ps5-2-1-c.png")
plt.show()
plt.close()

# Find K largest eigenvalues
s = np.matmul(A.T,A)
eig_values,eig_vectors = np.linalg.eig(s)
eig_values=sorted(eig_values,reverse=True)

num=0
variance=0
x =[]
v=[]
total = sum(eig_values)

for i in range(len(eig_values)):
    num+=eig_values[i]
    variance=num/total
    if variance >= 0.95:
        min_eig = i
        x.append(i)
        v.append(variance)
        break
    x.append(i)
    v.append(variance)
number_k = len(x)
print("The number K of eigenvectors that capture 95% of variance is: ", number_k)
plt.plot(x,v)
plt.xlabel("k")
plt.ylabel("v(k)")
os.chdir(current_path)
plt.savefig("ps5-2-1-d.png")
plt.show()
plt.close()

# Find U matrix 
val,vec= sp.sparse.linalg.eigs(C,number_k)
U = vec.real 
print("The dimensions of U are: ",U.shape)
# Display 9 eigenfaces
U_1 = np.reshape(U.T[0],(112,92))
U_2 = np.reshape(U.T[1],(112,92))
U_3 = np.reshape(U.T[2],(112,92))
U_4 = np.reshape(U.T[3],(112,92))
U_5 = np.reshape(U.T[4],(112,92))
U_6 = np.reshape(U.T[5],(112,92))
U_7 = np.reshape(U.T[6],(112,92))
U_8 = np.reshape(U.T[7],(112,92))
U_9 = np.reshape(U.T[8],(112,92))
Um=[U_1,U_2,U_3,U_4,U_5,U_6,U_7,U_8,U_9]
fig, ax = plt.subplots(3,3, figsize=(8,8))
for i,a in enumerate(ax.flat):
    a.imshow(Um[i])
os.chdir(current_path)
plt.savefig("ps5-2-1-e.png")
plt.show()
plt.close()

# Find W_training and W_testing
U=U.T
W_training = []
for i in range(len(T)):
    a = T[i]-m
    x=np.reshape(a,(10304,1))
    wi = np.matmul(U,x)
    W_training.append(wi)
W_training = np.array(W_training)
W_training = np.reshape(W_training,(320,number_k))
print("W_training dimensions: ", W_training.shape)


T_t = []   # finding T matrix but for test folder now
os.chdir(test_folder)
for image in os.listdir(test_folder):
    im = Image.open(image)
    im_matrix = np.array(im)
    im_matrix = np.reshape(im_matrix,(10304,1))
    T_t.append(im_matrix)
    im.close()
T_t = np.array(T_t)
T_t=np.reshape(T_t,(80,10304))


W_testing=[]
for i in range(len(T_t)):
    a = T_t[i]-m
    x=np.reshape(a,(10304,1))
    wi = np.matmul(U,x)
    W_testing.append(wi)

W_testing = np.array(W_testing)
W_testing = np.reshape(W_testing,(80,number_k))
print("W_testing dimensions: ",W_testing.shape)

# Find y_train and y_test
y_test=[]
for image in os.listdir(test_folder):
    image = image.split("_")
    y_test.append(int(image[0]))
y_test=np.array(y_test)
y_test=np.reshape(y_test,(80,1))


os.chdir(train_folder)
y_train=[]
for image in os.listdir(train_folder):
    image = image.split("_")
    y_train.append(int(image[0]))
    
y_train=np.array(y_train)
y_train=np.reshape(y_train,(320,1))


# Use Knn classifier for different values of k

# k = 1
knn = KNeighborsClassifier(n_neighbors=1)
knn.fit(W_training, y_train)
y_pred = knn.predict(W_testing)
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy with k=1: ",accuracy)

# k = 3
knn = KNeighborsClassifier(n_neighbors=3)
knn.fit(W_training, y_train)
y_pred = knn.predict(W_testing)
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy with k=3: ",accuracy)

# k = 5
knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(W_training, y_train)
y_pred = knn.predict(W_testing)
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy with k=5: ",accuracy)

# k = 7
knn = KNeighborsClassifier(n_neighbors=7)
knn.fit(W_training, y_train)
y_pred = knn.predict(W_testing)
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy with k=7: ",accuracy)

# k = 9
knn = KNeighborsClassifier(n_neighbors=9)
knn.fit(W_training, y_train)
y_pred = knn.predict(W_testing)
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy with k=9: ",accuracy)

# k = 11
knn = KNeighborsClassifier(n_neighbors=11)
knn.fit(W_training, y_train)
y_pred = knn.predict(W_testing)
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy with k=11: ",accuracy)


# Use SVM classifiers 

#one-vs-one svm + linear
st = time.time()
clf1= svm.SVC(kernel='linear')
ovo =OneVsOneClassifier(clf1)
ovo.fit(W_training,y_train)
y_pred = ovo.predict(W_testing)
ed = time.time()
t = ed - st
print("Time for OnevsOne + linear:",t," s")
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy of OnevsOne + linear:",accuracy)

#one-vs-one svm + polynomial
st = time.time()
clf2= svm.SVC(kernel='poly', degree=3)
ovo =OneVsOneClassifier(clf2)
ovo.fit(W_training,y_train)
y_pred = ovo.predict(W_testing)
ed = time.time()
t = ed - st
print("Time for OnevsOne + polynomial:",t," s")
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy of OnevsOne + polynomial:",accuracy)

#one-vs-one svm + gaussian
st = time.time()
clf3= svm.SVC(kernel='rbf')
ovo =OneVsOneClassifier(clf3)
ovo.fit(W_training,y_train)
y_pred = ovo.predict(W_testing)
ed = time.time()
t = ed - st
print("Time for OnevsOne + gaussian:",t," s")
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy of OnevsOne + gaussian:",accuracy)

#one-vs-all svm + linear
st=time.time()
clf4= svm.SVC(kernel='linear')
ovr =OneVsRestClassifier(clf4)
ovr.fit(W_training,y_train)
y_pred = ovr.predict(W_testing)
ed = time.time()
t = ed - st
print("Time for OnevsAll + linear:",t," s")
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy of OnevsAll + linear:",accuracy)

#one-vs-all svm + polynomial
st = time.time()
clf5= svm.SVC(kernel='poly', degree=3)
ovr =OneVsRestClassifier(clf5)
ovr.fit(W_training,y_train)
y_pred = ovr.predict(W_testing)
ed = time.time()
t = ed - st
print("Time for OnevsAll + polynomial:",t," s")
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy of OnevsAll + polynomial:",accuracy)

#one-vs-all svm + gaussian
st=time.time()
clf6= svm.SVC(kernel='rbf')
ovr =OneVsRestClassifier(clf6)
ovr.fit(W_training,y_train)
y_pred = ovr.predict(W_testing)
ed = time.time()
t = ed - st
print("Time for OnevsAll + gaussian:",t," s")
accuracy = accuracy_score(y_test,y_pred)
print("Accuracy of OnevsAll + gaussian:",accuracy)


