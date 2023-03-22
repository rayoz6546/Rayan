# -*- coding: utf-8 -*-
"""
Created on Tue Jan 24 22:24:13 2023

@author: RAYAN
"""
import numpy as np
import matplotlib.pyplot as plt
import statistics
from computeCost import computeCost
from gradientDescent import gradientDescent
from normalEqn import normalEqn
from sklearn.model_selection import train_test_split

#--------------------------------------------PART 1--------------------------------------------------#

X = np.array([[1,1],[1,2],[1,3],[1,4]])
y = np.array([3,5,7,9])

print("Part 1 \n")
# Test 1
theta = np.array([0,0.5])
c = computeCost(X,y,theta)
print("Cost using theta=[0,0.5]: ",c)

# Test 2
theta = np.array([1,1])
c= computeCost(X,y,theta)
print("Cost using theta=[1,1]: ",c)
print('\n')


#----------------------------------------------PART 2--------------------------------------------------#

print("Part 2 \n")
X_train = np.array([[1,1],[1,2],[1,3],[1,4]])
y_train = np.array([3,5,7,9])
alpha = 0.001
iters = 15
t = gradientDescent(X_train,y_train, alpha,iters)
print("theta = ",t[0])
print("cost = ",t[1])
print("cost history: ")
print(t[2])
print('\n')


#--------------------------------------------PART 3--------------------------------------------------#

print("Part 3 \n")
X_train = np.array([[1,1],[1,2],[1,3],[1,4]])
y_train = np.array([3,5,7,9])
n = normalEqn(X_train, y_train)
print("Theta value using normal equation = ", n[0])
print("Cost value using normal equation = ",n[1])
print('\n')

#--------------------------------------------PART 4--------------------------------------------------#

print("Part 4 \n")
#To load data from .csv file
f = open('hw2_data1.csv','r')
power=[]
price=[]
for row in f:
    row= row.split(',')
    col1 = float(row[0])
    col2 = float(row[1])
    power.append(col1)
    price.append(col2)
    
#To store the scatter plot
plt.scatter(power,price)
plt.xlabel("Horse power of a car in 100s")
plt.ylabel("Price in $1,000s")
plt.show()
plt.savefig("ps4-4-b.png")
f.close()

#Open .csv file again, this time add 1's to feature vector
f = open('hw2_data1.csv','r')
X=[]
Y = []
for row in f:
    row= row.split(',')
    col1 = float(row[0])
    col2 = float(row[1])
    X.append([1,col1]) #to add the 1's
    Y.append([col2])
f.close()

#Uncomment to see matrices X and Y
# print("Matrix X:")
# print(X)
# print('\n')
# print("Matrix Y:")
# print(Y)
# print('\n')


X = np.array(X)
Y=np.array(Y)
#To get the sizes of X and Y
print("Size of matrix X:", X.shape)
print("Size of matrix Y: ",Y.shape)


#To randomly divide the data into training set and test set (90% training)
X_train, X_test, Y_train, Y_test = train_test_split(X,Y,train_size=0.9,shuffle=True)

print("X_train is:")
print(X_train)
print('\n')
print("Y_train is:")
print(Y_train)
print('\n')
print("X_test is:")
print(X_test)
print('\n')
print("Y_test is:")
print(Y_test)
print('\n')
X_train = np.array(X_train)
Y_train=np.array(Y_train)

# compute the gradient descent 
iters=500
alpha=0.3
g = gradientDescent(X_train, Y_train, alpha, iters)   
print("Theta = ",g[0])

#To plot cost vs iterations
iterations = []
for i in range(iters):
    iterations.append(i)         
plt.plot(iterations,list(g[2]))
plt.xlabel("Iterations")
plt.ylabel("Cost")
plt.savefig("ps2-4-e-1.png")
plt.show()

#To plot the line corresponding to hypothesis on the scatter pot 
x = np.linspace(0,3)
y = g[0][0]+g[0][1]*x
fig,ax=plt.subplots()
ax.scatter(power,price)
ax.plot(x,y)
plt.xlabel("Horse power of a car in 100s")
plt.ylabel("Price in $1,000s")
plt.savefig("ps2-4-e-2.png")
plt.show()

X_test = np.array(X_test)
Y_test = np.array(Y_test)

# Calculate y_predict using X.theta
y_predict = np.dot(X_test,g[0])
print('\n')
print("Y_predicted: ")
print(y_predict)
print('\n')

# Calculating average mean squared error
error = (1/len(Y_test))*np.sum(np.square(Y_test - y_predict))
avg_error = np.mean(error)
print("Prediction error: ",error)

#Now using normal equation
normal_eq= normalEqn(X_train,Y_train)
print("Parameter theta from normal equation: ",normal_eq[0])

#Calculate new y_predict
y_predict = np.dot(X_test,normal_eq[0])

# Calculate new average mean sqaured error
error = (1/len(Y_test))*np.sum(np.square(Y_test - y_predict))
avg_error = np.mean(error)
print("Prediction error (after using normal equation): ",error)


# This for last question in part 4 (plot for different values of alpha)
a =  [0.001,0.003,0.03,3]
ite = []
for i in range(300):
    ite.append(i)
    
w = gradientDescent(X_train, Y_train, a[0], 300)
plt.plot(ite,list(w[2]))
plt.xlabel("iterations")
plt.ylabel("cost")
plt.savefig("ps2-4-h-1.png")
plt.show()
w = gradientDescent(X_train, Y_train, a[1], 300)
plt.plot(ite,list(w[2]))
plt.xlabel("iterations")
plt.ylabel("cost")
plt.savefig("ps2-4-h-2.png")
plt.show()
w = gradientDescent(X_train, Y_train, a[2], 300)
plt.plot(ite,list(w[2]))
plt.xlabel("iterations")
plt.ylabel("cost")
plt.savefig("ps2-4-h-3.png")
plt.show()
w = gradientDescent(X_train, Y_train, a[3], 300)
plt.plot(ite,list(w[2]))
plt.xlabel("iterations")
plt.ylabel("cost")
plt.savefig("ps2-4-h-4.png")
plt.show()


#-------------------------------------------------PART 5--------------------------------------------------#

print("\nPart 5 \n")
#Open .txt file and store values in each column in vectors size_house and nbre_bedrooms
f = open('hw2_data2.txt','r')
size_house = []
nbre_bedrooms = []
prices = []
for row in f:
    row = row.split(',')
    col1 = float(row[0])
    col2 = float(row[1])
    col3 = float(row[2])
    size_house.append(col1)
    nbre_bedrooms.append(col2)
    prices.append([col3])

# Calculate mean and standard deviation for every vector
u_sizehouse = statistics.mean(size_house)
print("mean of size_house vector (first column): ", u_sizehouse)
u_nbrebedrooms = statistics.mean(nbre_bedrooms)
print("mean of nbre_bedrooms vector (second column): ", u_nbrebedrooms)
s_sizehouse = statistics.stdev(size_house)
print("standard deviation of size_house: ", s_sizehouse)
s_nbrebedrooms = statistics.stdev(nbre_bedrooms)
print("standard deviation of nbre_bedrooms: ", s_nbrebedrooms)

# Normalize input
size_house=[(x-u_sizehouse)/s_sizehouse for x in size_house]
nbre_bedrooms=[(x-u_nbrebedrooms)/s_nbrebedrooms for x in nbre_bedrooms]

n=len(size_house)
X = []
for i in range(n):
    X.append([1,size_house[i],nbre_bedrooms[i]])  #to add 1 to every training set

X=np.array(X)
Y=np.array(prices)

#To show size of vectors X and Y
print("Size of feature matrix X: ",X.shape)
print("Size of label vector Y: ",Y.shape)

it = []
for i in range(750):
    it.append(i)    #this is just to get list from 0 to 750 to form x-axis on plot
    
c = gradientDescent(X, Y, 0.01, 750)

# To plot cost vs iterations
plt.plot(it,list(c[2]))
plt.xlabel("iterations")
plt.ylabel("cost")
plt.savefig("ps2-5-b.png")
plt.show()

print("Computed model paramter theta = ",c[0])  #theta

# Normalize input (for last question in part 5)
sq = (1080-u_sizehouse)/s_sizehouse
bed = (2-u_nbrebedrooms)/s_nbrebedrooms
X = [[1,sq,bed]] # add 1 to feature vector
X = np.array(X)
price_pred = np.dot(X,c[0])  #predict price using X.theta

print("Predicted price: ",price_pred)



