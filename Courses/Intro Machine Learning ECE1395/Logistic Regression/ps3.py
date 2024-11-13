# -*- coding: utf-8 -*-
"""
Created on Mon Jan 30 15:57:07 2023

@author: RAYAN
"""

import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from scipy.optimize import fmin_bfgs
from scipy.optimize import fmin 
from costFunction import costFunction
from gradFunction import gradFunction
from sigmoid import sigmoid
from normalEqn import normalEqn


#------------------------------------PART 1-------------------------------------#
print("Part 1\n")
#--------------------------Matrices X and Y-------------------------------#
f = open("hw3_data1.txt",'r')
X=[]
Y=[]
for row in f:
    row = row.split(',')
    col1 = float(row[0])
    col2 = float(row[1])
    col3 = float(row[2])
    X.append([1,col1,col2])
    Y.append([col3])

X = np.array(X)
Y = np.array(Y)

print("Size of matrix X is: ",X.shape)
print("Size of matrix Y is: ",Y.shape)
print("\n")
f.close()


#------------------------Scatter plot training data------------------------#
f = open("hw3_data1.txt",'r')
X_1=[] #Exam1 scores
X_2=[] #Exam2 scores
Check_Status=[]
for row in f:
    row = row.split(',')
    col1 = float(row[0])
    col2 = float(row[1])
    col3 = float(row[2])
    X_1.append([col1])
    X_2.append([col2])
    if col3 == 0:
        Check_Status.append(0)
    else:
        Check_Status.append(1)
    
for i in range(len(X_1)):
    if Check_Status[i]==0:
        
        plt.scatter(X_1[i],X_2[i], marker = "o", c="blue")
    else:
        plt.scatter(X_1[i],X_2[i], marker = "+", c="black")
    
plt.xlabel("Exam1 score")
plt.ylabel("Exam2 score")
plt.savefig("ps3-1-b.png")
f.close()
plt.close()

# --------------------------Training/Test sets---------------------------#
X_train, X_test, Y_train, Y_test = train_test_split(X,Y,train_size=0.9,shuffle=True)


#----------------------------Sigmoid test--------------------------------#
i = -15
z=[]
while i <= 15:
    z.append(i)
    i+=1
z = np.array(z)
gz = sigmoid(z)

plt.title("sigmoid")
plt.xlabel("z")
plt.ylabel("gz")
plt.plot(z,gz)
plt.savefig("ps3-1-c.png")
plt.close()


#----------------------------Cost Function Test--------------------------#

X = np.array([[1,1,0],[1,1,3],[1,3,1],[1,3,4]])
Y = np.array([[0],[1],[0],[1]])
theta=np.array([[0],[0],[0]])

j = costFunction(theta, X, Y)
print("Cost J for the toy set when theta=[0,0,0] is: ",j)

g = gradFunction(theta,X,Y)
print("Gradient of the cost of the toy set is: ",g)
print("\n")

#-----------------------------Optimization--------------------------------#

#This part is just to replot the scatter plot again
f = open("hw3_data1.txt",'r')
X_1=[] #Exam1 scores
X_2=[] #Exam2 scores
Check_Status=[]
for row in f:
    row = row.split(',')
    col1 = float(row[0])
    col2 = float(row[1])
    col3 = float(row[2])
    X_1.append([col1])
    X_2.append([col2])
    if col3 == 0:
        Check_Status.append(0)
    else:
        Check_Status.append(1)
    
for i in range(len(X_1)):
    if Check_Status[i]==0:
        
        plt.scatter(X_1[i],X_2[i], marker = "o", c="blue")
    else:
        plt.scatter(X_1[i],X_2[i], marker = "+", c="black")
f.close()
plt.xlabel("Exam1 score")
plt.ylabel("Exam2 score")

#This is the optimization part
theta = np.array([[0]]*len(X_train[0]))
op1 = fmin_bfgs(costFunction, x0 = theta,fprime=gradFunction ,args=(X_train,Y_train.flatten()))
print("The optimal parameter theta is: ",op1)
print("\n")
x = np.linspace(30,100)
y=(-op1[0]-op1[1]*x)/op1[2]
plt.plot(x,y)
plt.savefig("ps3-1-f.png")
plt.close()

#-----------------------Accuracy of logistic regression-----------------#
theta = np.array([[op1[0]],[op1[1]],[op1[2]]])

h_test= np.dot(X_test,theta)

h_test = h_test>0  #if True (1) -> admitted, else not admitted

correctly_classified = 0
for i in range(len(h_test)):
    if int(h_test[i][0]) == Y_test[i][0]:
        correctly_classified += 1
        
accuracy = correctly_classified/len(Y_test)
print("Accuracy of logistic regression is: ",accuracy)

#---------------------------Admission probability------------------------#
X_new = [[1,80,50]]
X_new = np.array(X_new)
x = np.dot(X_new,theta) 
h_new= sigmoid(x)
print("Admission probability is: ",h_new[0][0]*100,"%")
print("\n")


#-----------------------------------PART 2------------------------------------#
print("Part 2\n")
f = open("hw3_data2.csv",'r')
X = []
X_plot=[]
Y = []
for row in f:
    row = row.split(',')
    col1 = float(row[0])
    col2 = float(row[1])
    X.append([1,col1,col1**2])
    X_plot.append([col1])
    Y.append([col2])

X = np.array(X)

Y = np.array(Y)
X_plot = np.array(X_plot)

parameter = normalEqn(X,Y)
print("The learned model parameter is: ",parameter[0])

plt.scatter(X_plot,Y)
x=np.linspace(500,1000)
y=parameter[0][0]+parameter[0][1]*x+parameter[0][2]*x**2
plt.xlabel("population in thousands,n")
plt.ylabel("profit")
plt.plot(x,y)
plt.savefig("ps3-2-b.png")















