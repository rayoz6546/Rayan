# -*- coding: utf-8 -*-
"""
Created on Sun Apr  9 16:45:49 2023

@author: RAYAN
"""

from scipy.io import loadmat
from scipy.io import savemat
import numpy as np
import matplotlib.pyplot as plt
import random


from sklearn.multiclass import OneVsRestClassifier

from sklearn.svm import SVC
from sklearn.neighbors import KNeighborsClassifier
from sklearn.linear_model import LogisticRegression
from sklearn import tree
from sklearn.ensemble import RandomForestClassifier


# --------------------------------------PART A------------------------------------------#

data = loadmat("HW8_data1")

X = data["X"]
Y = data["y"]


fig, axs = plt.subplots(5,5)

for rand in range(25):
        
    for c in range(5):
        for d in range(5):
            i = random.randint(0,4999)
            image = np.reshape(X[i], (20,20))
            axs[c][d].imshow(image)
            
            
#---------------------------------------PART B--------------------------------------#

from sklearn.model_selection import train_test_split

X_train, X_test, Y_train, Y_test = train_test_split(X,Y,train_size=0.9,shuffle=True)

#--------------------------------------PART C---------------------------------------#

X1=[]
X2=[]
X3=[]
X4=[]
X5=[]
Y1=[]
Y2=[]
Y3=[]
Y4=[]
Y5=[]
for i in range(1000):
    a = random.randint(0, 4499)
    X1.append(X_train[a])
    Y1.append(Y_train[a])
    b = random.randint(0, 4499)
    X2.append(X_train[b])
    Y2.append(Y_train[b])
    c = random.randint(0, 4499)
    X3.append(X_train[c])
    Y3.append(Y_train[c])
    d = random.randint(0, 4499)
    X4.append(X_train[d])
    Y4.append(Y_train[d])
    e = random.randint(0, 4499)
    X5.append(X_train[e])
    Y5.append(Y_train[e])

X1 = np.array(X1)
X2 = np.array(X2)
X3 = np.array(X3)
X4 = np.array(X4)
X5 = np.array(X5)
Y1 = np.array(Y1)
Y2 = np.array(Y2)
Y3 = np.array(Y3)
Y4 = np.array(Y4)
Y5 = np.array(Y5)

## This is just to save the subsets as .mat input files (example: D1.mat corresponds to X1 and Y1)

# D1 = {"X_1":X1,"Y_1":Y1}
# D2 = {"X_2":X2,"Y_2":Y2}
# D3 = {"X_3":X3,"Y_3":Y3}
# D4 = {"X_4":X4,"Y_4":Y4}
# D5 = {"X_5":X5,"Y_5":Y5}

# savemat("D1.mat",D1)
# savemat("D2.mat",D2)
# savemat("D3.mat",D3)
# savemat("D4.mat",D4)
# savemat("D5.mat",D5)

# --------------------------------------PART D---------------------------------------#
# Using SVM

model= SVC(kernel='rbf')
ovr = OneVsRestClassifier(model)

ovr.fit(X1,Y1)   # train using X1

accuracy = ovr.score(X1,Y1)
print("Accuracy on training set X1 (trained) using SVM:", accuracy*100)

accuracy = ovr.score(X2,Y2)
print("Accuracy on training set X2 using SVM:",accuracy*100)

accuracy = ovr.score(X3,Y3)
print("Accuracy on training set X3 using SVM:",accuracy*100)

accuracy = ovr.score(X4,Y4)
print("Accuracy on training set X4 using SVM:",accuracy*100)

accuracy = ovr.score(X5,Y5)
print("Accuracy on training set X5 using SVM:",accuracy*100)

y1_pred = ovr.predict(X_test)
accuracy = ovr.score(X_test,Y_test)
print("Accuracy on testing set using SVM:",accuracy*100)


#--------------------------------------PART E--------------------------------------#

# Using KNN 

knn = KNeighborsClassifier(n_neighbors=3)

knn.fit(X2,Y2)  # train using X2

accuracy = knn.score(X2,Y2)
print("Accuracy on training set X2 (trained) using KNN:",accuracy*100)

accuracy = knn.score(X1,Y1)
print("Accuracy on training set X1 using KNN:",accuracy*100)

accuracy = knn.score(X3,Y3)
print("Accuracy on training set X3 using KNN:",accuracy*100)

accuracy = knn.score(X4,Y4)
print("Accuracy on training set X4 using KNN:",accuracy*100)

accuracy = knn.score(X5,Y5)
print("Accuracy on training set X5 using KNN:",accuracy*100)

y2_pred = knn.predict(X_test)
accuracy = knn.score(X_test,Y_test)
print("Accuracy on testing set using KNN:",accuracy*100)


#----------------------------------------PART F------------------------------------#

# Using Logistic Regression

reg = LogisticRegression()

reg.fit(X3,Y3)   # train on X3

accuracy = reg.score(X3,Y3)
print("Accuracy on training set X3 using (trained) Logistic Regression:",accuracy*100)

accuracy = reg.score(X1,Y1)
print("Accuracy on training set X1 using Logistic Regression:",accuracy*100)

accuracy = reg.score(X2,Y2)
print("Accuracy on training set X2 using Logistic Regression:",accuracy*100)

accuracy = reg.score(X4,Y4)
print("Accuracy on training set X4 using Logistic Regression:",accuracy*100)


accuracy = reg.score(X5,Y5)
print("Accuracy on training set X5 using Logistic Regression:",accuracy*100)

y3_pred = reg.predict(X_test)
accuracy = reg.score(X_test,Y_test)
print("Accuracy on testing set using Logistic Regression:",accuracy*100)


#----------------------------------------PART G-----------------------------------# 

# Using Decision Tree

t = tree.DecisionTreeClassifier()

t.fit(X4,Y4)   # train on X4
accuracy = t.score(X4,Y4)
print("Accuracy on training set X4 (trained) using Decision Tree:",accuracy*100)


accuracy = t.score(X1,Y1)
print("Accuracy on training set X1 using Decision Tree:",accuracy*100)


accuracy = t.score(X2,Y2)
print("Accuracy on training set X2 using Decision Tree:",accuracy*100)


accuracy = t.score(X3,Y3)
print("Accuracy on training set X3 using Decision Tree:",accuracy*100)


accuracy = t.score(X5,Y5)
print("Accuracy on training set X5 using Decision Tree:",accuracy*100)

y4_pred = t.predict(X_test)
accuracy = t.score(X_test,Y_test)
print("Accuracy on testing set using Decision Tree:",accuracy*100)


#------------------------------------------PART H-----------------------------------#

clf = RandomForestClassifier(max_depth=75)

clf.fit(X5, Y5)    # train on X5

accuracy = clf.score(X5,Y5)
print("Accuracy on training set X5 (trained) using Random Forest:",accuracy*100)

accuracy = clf.score(X1,Y1)
print("Accuracy on training set X1 using Random Forest:",accuracy*100)

accuracy = clf.score(X2,Y2)
print("Accuracy on training set X2 using Random Forest:",accuracy*100)

accuracy = clf.score(X3,Y3)
print("Accuracy on training set X3 using Random Forest:",accuracy*100)

accuracy = clf.score(X4,Y4)
print("Accuracy on training set X4 using Random Forest:",accuracy*100)

y5_pred = t.predict(X_test)
accuracy = clf.score(X_test,Y_test)
print("Accuracy on testing set using Random Forest:",accuracy*100)


#---------------------------------------PART I-----------------------------------#

# Voting 
import statistics 

y_predict = []
for i in range(len(X_test)):
    y_predict.append(statistics.mode([y1_pred[i],y2_pred[i],y3_pred[i],y4_pred[i],y5_pred[i]]))

y_predict = np.array(y_predict)
y_predict = np.reshape(y_predict,(len(Y_test),1))


accuracy = 0
for i in range(len(X_test)):
    if y_predict[i]==Y_test[i]:
        accuracy +=1

accuracy = accuracy/len(Y_test)    

print("Final accuracy on testing set:",accuracy*100)

















