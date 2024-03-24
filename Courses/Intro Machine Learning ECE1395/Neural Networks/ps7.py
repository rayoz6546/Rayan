# -*- coding: utf-8 -*-
"""
Created on Sat Apr  1 19:46:59 2023

@author: RAYAN
"""

from predict import predict
from nnCost import nnCost
from sGD import sGD
from sigmoidGradient import sigmoidGradient
from scipy.io import loadmat
import numpy as np
import matplotlib.pyplot as plt


#-----------------------------------------PART 0-----------------------------------------#
data1 = loadmat("HW7_Data.mat")
X = data1["X"]
Y = data1["y"]

#-----------------------------------------PART 1-----------------------------------------#
print("Part 1\n")
data2 = loadmat("HW7_weights_2.mat")
theta1 = data2["Theta1"]
theta2 = data2["Theta2"]

x = predict(theta1, theta2, X)

accuracy =0

for i in range(len(x[0])):
    if x[0][i]==Y[i]:
        accuracy+=1
        
acc = accuracy/len(x[0])

print("Accuracy is:",acc*100,'\n')

#----------------------------------------PART 2-------------------------------------------#
print("Part 2\n")
# lambda = 0
a = nnCost(theta1,theta2, X, Y, 3, 0)
print("Cost with lambda=0:",a)

# lambda = 1
a = nnCost(theta1,theta2, X, Y, 3, 1)
print("Cost with lambda=1:",a)

# lambda = 2
a = nnCost(theta1,theta2, X, Y, 3, 2)
print("Cost with lambda=2:",a,'\n')


#----------------------------------------PART 3-------------------------------------------#

print("Part 3\n")
z = np.array([-10,0,10])
z = np.reshape(z,(1,3))
s = sigmoidGradient(z)
print("Sigmoid gradient when z=[-10,0,10]':")
print(np.round(s,2),"\n")

#----------------------------------------PART 4-------------------------------------------#

print("Part 4\n")

alpha = 0.01
maxEpochs = 50
lambda_=0.1
hidden_layer_size=8
input_layer_size=len(X.T)
num_labels = 3

t1,t2,c = sGD(input_layer_size,hidden_layer_size,num_labels,X,Y,lambda_,alpha,maxEpochs)

nbre_iterations = []
for i in range(maxEpochs):
    nbre_iterations.append(i)
    
plt.plot(nbre_iterations,c)
plt.xlabel("Number of iterations")
plt.ylabel("Cost")
#plt.savefig("ps7-4-e-1.png")
plt.show()

#------------------------------------------PART 5-----------------------------------------#

from sklearn.model_selection import train_test_split

X_train, X_test, Y_train, Y_test = train_test_split(X,Y,train_size=0.85,shuffle=True)

# -------------------for maxEpochs = 50--------------------------#
print("For maxEpochs=50\n")
#Training accuracy for lambda = 0
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0,alpha,50)
y_predict = predict(t1,t2,X_train)[0]
accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)
print("Training accuracy with lambda=0 is:",acc*100)
print("Cost:",c[len(c)-1])

# Training accuracy for lambda = 0.01
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.01,alpha,50)

y_predict = predict(t1,t2,X_train)[0]

accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)

print("Training accuracy with lambda=0.01 is:",acc*100)
print("Cost:",c[len(c)-1])

# Training accuracy for lambda = 0.1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.1,alpha,50)

y_predict = predict(t1,t2,X_train)[0]

accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)

print("Training accuracy with lambda=0.1 is:",acc*100)
print("Cost:",c[len(c)-1])

# Training accuracy for lambda = 1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,1,alpha,50)

y_predict = predict(t1,t2,X_train)[0]

accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)

print("Training accuracy with lambda=1 is:",acc*100)
print("Cost:",c[len(c)-1])



# Testing accuracy for lambda = 0
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0,alpha,50)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)

print("Testing accuracy with lambda=0 is:",acc*100)
print("Cost:",c[len(c)-1])


# Testing accuracy for lambda = 0.01
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.01,alpha,50)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)

print("Testing accuracy with lambda=0.01 is:",acc*100)
print("Cost:",c[len(c)-1])


# Testing accuracy for lambda = 0.1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.1,alpha,50)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)
print("Testing accuracy with lambda=0.1 is:",acc*100)
print("Cost:",c[len(c)-1])


# Testing accuracy for lambda = 1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,1,alpha,50)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)

print("Testing accuracy with lambda=1 is:",acc*100)
print("Cost:",c[len(c)-1],"\n")



# -------------------for maxEpochs = 100--------------------------#
print("For maxEpochs=100\n")

# Training accuracy for lambda = 0
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0,alpha,100)

y_predict = predict(t1,t2,X_train)[0]

accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)

print("Training accuracy with lambda=0 is:",acc*100)
print("Cost:",c[len(c)-1])

# Training accuracy for lambda = 0.01
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.01,alpha,100)

y_predict = predict(t1,t2,X_train)[0]

accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)

print("Training accuracy with lambda=0.01 is:",acc*100)
print("Cost:",c[len(c)-1])

# Training accuracy for lambda = 0.1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.1,alpha,100)

y_predict = predict(t1,t2,X_train)[0]

accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)

print("Training accuracy with lambda=0.1 is:",acc*100)
print("Cost:",c[len(c)-1])

# Training accuracy for lambda = 1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,1,alpha,100)

y_predict = predict(t1,t2,X_train)[0]

accuracy = 0

for i in range(len(Y_train)):
    if y_predict[i]==Y_train[i]:
        accuracy+=1
        
acc = accuracy/len(Y_train)

print("Training accuracy with lambda=1 is:",acc*100)
print("Cost:",c[len(c)-1])



# Testing accuracy for lambda = 0
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0,alpha,100)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)

print("Testing accuracy with lambda=0 is:",acc*100)
print("Cost:",c[len(c)-1])


# Testing accuracy for lambda = 0.01
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.01,alpha,100)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)

print("Testing accuracy with lambda=0.01 is:",acc*100)
print("Cost:",c[len(c)-1])


# Testing accuracy for lambda = 0.1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,0.1,alpha,100)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)

print("Testing accuracy with lambda=0.1 is:",acc*100)
print("Cost:",c[len(c)-1])



# Testing accuracy for lambda = 1
t1,t2,c = sGD(len(X_train.T),hidden_layer_size,num_labels,X_train,Y_train,1,alpha,100)

y_predict = predict(t1,t2,X_test)[0]

accuracy = 0

for i in range(len(Y_test)):
    if y_predict[i]==Y_test[i]:
        accuracy+=1
        
acc = accuracy/len(Y_test)

print("Testing accuracy with lambda=1 is:",acc*100)
print("Cost:",c[len(c)-1])









