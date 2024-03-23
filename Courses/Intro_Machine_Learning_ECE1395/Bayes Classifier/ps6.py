# -*- coding: utf-8 -*-
"""
Created on Sun Mar 19 17:46:58 2023

@author: RAYAN
"""
from scipy.io import loadmat
import numpy as np
import math


#-------------------------------------------PART 1-----------------------------------------#
print("Part 1\n")
data=loadmat("hw4_data3.mat")
X_train = data["X_train"]
X_test = data["X_test"]
y_train= data["y_train"]
y_test = data["y_test"]

X_train_1=[]
X_train_2=[]
X_train_3=[]

for i in range(len(y_train)):
    if y_train[i][0]==1:
        X_train_1.append(X_train[i])
    elif y_train[i][0]==2:
        X_train_2.append(X_train[i])
    else:
        X_train_3.append(X_train[i])
        
X_train_1=np.array(X_train_1)
X_train_2=np.array(X_train_2)
X_train_3=np.array(X_train_3)

print("Size of X_train_1:", X_train_1.shape)
print("Size of X_train_2:", X_train_2.shape)
print("Size of X_train_3:", X_train_3.shape)
print("\n")

X_train_1=X_train_1.T
X_train_2=X_train_2.T
X_train_3=X_train_3.T

mean_1=[]
mean_2=[]
mean_3=[]
std_1=[]
std_2=[]
std_3=[]
for i in range(len(X_train_1)):
    mean_1.append(np.mean(X_train_1[i]))
    std_1.append(np.std(X_train_1[i]))
    
for i in range(len(X_train_2)):
    mean_2.append(np.mean(X_train_2[i]))
    std_2.append(np.std(X_train_2[i]))
    
for i in range(len(X_train_1)):
    mean_3.append(np.mean(X_train_3[i]))
    std_3.append(np.std(X_train_3[i]))
    
print("Mean vector for class 1:",mean_1)
print("\n")
print("Mean vector for class 2:",mean_2)
print("\n")
print("Mean vector for class 3:",mean_3)
print("\n")
print("Standard Deviation vector for class 1:",std_1)
print("\n")
print("Standard Deviation vector for class 2:",std_2)
print("\n")
print("Standard Deviation vector for class 3:",std_3)
print("\n")


# Calculating p(xj | wi)
prob_1=[]
prob_2=[]
prob_3=[]

X_test=X_test.T

for i in range(len(X_test)):
    p1=[]
    p2=[]
    p3=[]
    for j in range(X_test.shape[1]):
        p1.append((1/math.sqrt(2*math.pi)*std_1[i])*(math.exp(-((X_test[i][j]-mean_1[i])**2)/(2*((std_1[i])**2)))))
        p2.append((1/math.sqrt(2*math.pi)*std_2[i])*(math.exp(-((X_test[i][j]-mean_2[i])**2)/(2*((std_2[i])**2)))))
        p3.append((1/math.sqrt(2*math.pi)*std_3[i])*(math.exp(-((X_test[i][j]-mean_3[i])**2)/(2*((std_3[i])**2)))))
    prob_1.append(p1)
    prob_2.append(p2)
    prob_3.append(p3)

prob_1=np.array(prob_1)
prob_2=np.array(prob_2)
prob_3=np.array(prob_3)


# Calculating ln(p(x|wi))
lnprob_1=0
lnprob_2=0
lnprob_3=0

for i in range(len(X_test)):
    lnprob_1+=np.log(prob_1[i])
    lnprob_2+=np.log(prob_2[i])
    lnprob_3+=np.log(prob_3[i])
    
# Calculating posterior probabilities (ln(p(wi | x)))

postln_1 = lnprob_1 + math.log(1/3)
postln_2 = lnprob_2 + math.log(1/3)
postln_3 = lnprob_3 + math.log(1/3)


# Predicting outputs
y_pred = []
for i in range(len(postln_1)):
    if postln_1[i] > postln_2[i] and postln_1[i] > postln_3[i]:
        y_pred.append(1)
    elif postln_2[i] > postln_1[i] and postln_2[i] > postln_3[i]:
        y_pred.append(2)
    else:
        y_pred.append(3)


# Calculate accuracy 
acc=0
for i in range(len(y_pred)):
    if y_test[i][0]==y_pred[i]:
        acc +=1
        
accuracy = acc/len(y_pred)
print("Accuracy of classifier:", accuracy*100, "%")

#-------------------------------------------PART 2------------------------------------------#

print("\nPart2\n")

# Covariance matrices 
sigma_1 = np.cov(X_train_1)
sigma_2 = np.cov(X_train_2)
sigma_3 = np.cov(X_train_3)

print("Covariance matrix 1:")
print("Shape:",sigma_1.shape,"\n")
print(sigma_1)
print("\nCovariance matrix 2:")
print("Shape:",sigma_2.shape,"\n")
print(sigma_2)
print("\nCovariance matrix 2:")
print("Shape:",sigma_3.shape,"\n")
print(sigma_3)
print("\n")

# Mean vectors 
mean_1 = np.array(mean_1)
mean_2 = np.array(mean_2)
mean_3 = np.array(mean_3)
mean_1=np.reshape(mean_1,(4,1))
mean_2=np.reshape(mean_2,(4,1))
mean_3=np.reshape(mean_3,(4,1))

print("Mean vector 1:")
print("Shape:", mean_1.shape,"\n")
print(mean_1)
print("\nMean vector 2:")
print("Shape:",mean_2.shape,"\n")
print(mean_2)
print("\nMean vector 3:")
print("Shape:",mean_3.shape,"\n")
print(mean_3)


c_1 = -(len(sigma_1)/2)*math.log(2*math.pi) - (1/2)*np.log(np.linalg.det(sigma_1))
c_2 = -(len(sigma_2)/2)*math.log(2*math.pi) - (1/2)*np.log(np.linalg.det(sigma_2))
c_3 = -(len(sigma_3)/2)*math.log(2*math.pi) - (1/2)*np.log(np.linalg.det(sigma_3))

X_test=X_test.T


# Computing discriminant function for each class
g_1=[]
g_2=[]
g_3=[]
for i in range(len(X_test)):
    #for j in range(X_test.shape[1]):
        x=np.reshape(X_test[i],(4,1))
        
        g_1.append((-1/2)*np.matmul(np.matmul((x-mean_1).T,np.linalg.pinv(sigma_1)), x-mean_1) + math.log(1/3) + c_1)
        g_2.append((-1/2)*np.matmul(np.matmul((x-mean_2).T,np.linalg.pinv(sigma_2)), x-mean_2) + math.log(1/3) + c_2)
        g_3.append((-1/2)*np.matmul(np.matmul((x-mean_3).T,np.linalg.pinv(sigma_3)), x-mean_3) + math.log(1/3) + c_3)
        
g_1=np.array(g_1)
g_2=np.array(g_2)
g_3=np.array(g_3)

g_1 = np.reshape(g_1,(25,1))
g_2 = np.reshape(g_2,(25,1))
g_3 = np.reshape(g_3,(25,1))


# Prediciting outputs
y_pred=[]
for i in range(len(g_1)):
    if g_1[i]>g_2[i] and g_1[i]>g_3[i]:
        y_pred.append(1)
    elif g_2[i]>g_1[i] and g_2[i]>g_3[i]:
        y_pred.append(2)
    else:
        y_pred.append(3)
        
# Calculating accuracy 
acc=0
for i in range(len(y_pred)):
    if y_pred[i]==y_test[i]:
        acc+=1
        
accuracy = acc/len(y_pred)

print("Accuracy of classifier:",accuracy*100,"%")















    









