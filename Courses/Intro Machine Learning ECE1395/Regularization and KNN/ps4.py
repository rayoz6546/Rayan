# -*- coding: utf-8 -*-
"""
Created on Tue Feb  7 10:18:58 2023

@author: RAYAN
"""

from scipy.io import loadmat
import numpy as np
from sklearn.model_selection import train_test_split
from Reg_normalEqn import Reg_normalEqn
from computeCost import computeCost
import matplotlib.pyplot as plt
from sklearn.neighbors import KNeighborsClassifier
from logReg_multi import logReg_multi


#----------------------------------PART1--------------------------------------#

print("PART 1\n")
data1 = loadmat("hw4_data1.mat")
x = np.array(data1["X_data"])

ones = np.array([1]*x.shape[0])
X = np.column_stack((ones,x))
print("Size of the feature matrix is: ", X.shape)

Y = np.array(data1["y"])

lambda_ = [0, 0.001, 0.003, 0.005, 0.007, 0.009, 0.012, 0.017]
err_train = [] # cost for each value of lambda (training) (20x8)
err_test = []  # cost for each value of lambda (testing) (20x8)

for i in range(20):
    err1=[] #for training 
    err2=[] #for testing
    X_train, X_test, Y_train, Y_test = train_test_split(X,Y,train_size=0.88,shuffle=True)
    
    for j in range(8):
        
        theta = Reg_normalEqn(X_train,Y_train,lambda_[j])
        
        c_train = computeCost(X_train,Y_train,theta)
        c_test = computeCost(X_test,Y_test,theta)
        err1.append(c_train)
        err2.append(c_test)
       
    err_train.append(err1)
    err_test.append(err2)
    

lambda_ = np.array(lambda_)
err_train = np.array(err_train)
err_test = np.array(err_test)


avg_train = [] # average of costs accross each column in err_train (list of length 8)
avg_test = [] # average of costs accross each column in err_test (list of length 8)

for i in range(8):
    sum_1=0
    sum_2=0
    for j in range(20):
        sum_1+=err_train[j][i]
        sum_2+=err_test[j][i]
        
    avg_train.append(sum_1/len(err_train))
    avg_test.append(sum_2/len(err_test))
    

avg_train = np.array(avg_train)
avg_test = np.array(avg_test)
fig,ax=plt.subplots()
ax.plot(lambda_,avg_train, label='training error')
ax.plot(lambda_,avg_test, label = 'testing error')

leg = ax.legend()
plt.xlabel("lambda")
plt.ylabel("Average error")
plt.savefig("ps4-1-a.png")
plt.show()


#--------------------------------PART 2-----------------------------------#

print("\nPART 2\n")
data2 = loadmat("hw4_data2.mat")

#first classifier data
X_train1 = np.array([data2["X1"],data2["X2"],data2["X3"],data2["X4"]])
Y_train1 = np.array([data2["y1"],data2["y2"],data2["y3"],data2["y3"]])
X_test1 = np.array(data2["X5"])
Y_test1 = np.array(data2["y5"])
X_train1=np.reshape(X_train1,(120,4))
Y_train1=np.reshape(Y_train1,(120,1))

#second classifier data
X_train2 = np.array([data2["X1"],data2["X2"],data2["X3"],data2["X5"]])
Y_train2 = np.array([data2["y1"],data2["y2"],data2["y3"],data2["y5"]])
X_test2 = np.array(data2["X4"])
Y_test2 = np.array(data2["y4"])  
X_train2=np.reshape(X_train2,(120,4))
Y_train2=np.reshape(Y_train2,(120,1))  
    
#third classifier data
X_train3 = np.array([data2["X1"],data2["X2"],data2["X4"],data2["X5"]])
Y_train3 = np.array([data2["y1"],data2["y2"],data2["y4"],data2["y5"]])
X_test3 = np.array(data2["X3"])
Y_test3 = np.array(data2["y3"]) 
X_train3=np.reshape(X_train3,(120,4))
Y_train3=np.reshape(Y_train3,(120,1))  
    

#fourth classifier data
X_train4 = np.array([data2["X1"],data2["X3"],data2["X4"],data2["X5"]])
Y_train4 = np.array([data2["y1"],data2["y3"],data2["y4"],data2["y5"]])
X_test4 = np.array(data2["X2"])
Y_test4 = np.array(data2["y2"])
X_train4=np.reshape(X_train4,(120,4))
Y_train4=np.reshape(Y_train4,(120,1))
    
    
#fifth classifier data
X_train5 = np.array([data2["X2"],data2["X3"],data2["X4"],data2["X5"]])
Y_train5 = np.array([data2["y2"],data2["y3"],data2["y4"],data2["y5"]])
X_test5 = np.array(data2["X1"])
Y_test5 = np.array(data2["y1"])   
X_train5=np.reshape(X_train5,(120,4))
Y_train5=np.reshape(Y_train5,(120,1))


# For k = 1 

model1 = KNeighborsClassifier(n_neighbors =1)
model1.fit(X_train1,Y_train1.flatten())
y = model1.predict(X_test1)
c=0
for i in range(len(Y_test1)):
    if Y_test1[i]==y[i]:
        c +=1      
accuracy1 = c/len(Y_test1)
#print("Accuracy for 1st fold: ",accuracy1)


model1.fit(X_train2,Y_train2.flatten())
y = model1.predict(X_test2)
c=0
for i in range(len(Y_test2)):
    if Y_test2[i]==y[i]:
        c +=1      
accuracy2 = c/len(Y_test2)
#print("Accuracy for 2nd fold: ",accuracy2)

model1.fit(X_train3,Y_train3.flatten())
y = model1.predict(X_test3)
c=0
for i in range(len(Y_test3)):
    if Y_test3[i]==y[i]:
        c +=1      
accuracy3 = c/len(Y_test3)
#print("Accuracy for 3rd fold: ",accuracy3)

model1.fit(X_train4,Y_train4.flatten())
y = model1.predict(X_test4)
c=0
for i in range(len(Y_test4)):
    if Y_test4[i]==y[i]:
        c +=1      
        
accuracy4 = c/len(Y_test4)
#print("Accuracy for 4th fold: ",accuracy4)

model1.fit(X_train5,Y_train5.flatten())
y = model1.predict(X_test5)
c=0
for i in range(len(Y_test5)):
    if Y_test5[i]==y[i]:
        c +=1      
accuracy5 = c/len(Y_test5)
#print("Accuracy for 5th fold: ",accuracy5)

avg_acc1 = (accuracy1+accuracy2+accuracy3+accuracy4+accuracy5)/5
print("Average accuracy (k=1) is: ",avg_acc1*100, "%")



# For k=2

model1 = KNeighborsClassifier(n_neighbors =2)
model1.fit(X_train1,Y_train1.flatten())
y = model1.predict(X_test1)
c=0
for i in range(len(Y_test1)):
    if Y_test1[i]==y[i]:
        c +=1      
accuracy1 = c/len(Y_test1)
#print("Accuracy for 1st fold: ",accuracy1)


model1.fit(X_train2,Y_train2.flatten())
y = model1.predict(X_test2)
c=0
for i in range(len(Y_test2)):
    if Y_test2[i]==y[i]:
        c +=1      
accuracy2 = c/len(Y_test2)
#print("Accuracy for 2nd fold: ",accuracy2)

model1.fit(X_train3,Y_train3.flatten())
y = model1.predict(X_test3)
c=0
for i in range(len(Y_test3)):
    if Y_test3[i]==y[i]:
        c +=1      
accuracy3 = c/len(Y_test3)
#print("Accuracy for 3rd fold: ",accuracy3)

model1.fit(X_train4,Y_train4.flatten())
y = model1.predict(X_test4)
c=0
for i in range(len(Y_test4)):
    if Y_test4[i]==y[i]:
        c +=1      
        
accuracy4 = c/len(Y_test4)
#print("Accuracy for 4th fold: ",accuracy4)

model1.fit(X_train5,Y_train5.flatten())
y = model1.predict(X_test5)
c=0
for i in range(len(Y_test5)):
    if Y_test5[i]==y[i]:
        c +=1      
accuracy5 = c/len(Y_test5)
#print("Accuracy for 5th fold: ",accuracy5)

avg_acc2 = (accuracy1+accuracy2+accuracy3+accuracy4+accuracy5)/5
print("Average accuracy (k=2) is: ",avg_acc2*100, "%")


# For k = 15

model1 = KNeighborsClassifier(n_neighbors =15)
model1.fit(X_train1,Y_train1.flatten())
y = model1.predict(X_test1)
c=0
for i in range(len(Y_test1)):
    if Y_test1[i]==y[i]:
        c +=1      
accuracy1 = c/len(Y_test1)
#print("Accuracy for 1st fold: ",accuracy1)


model1.fit(X_train2,Y_train2.flatten())
y = model1.predict(X_test2)
c=0
for i in range(len(Y_test2)):
    if Y_test2[i]==y[i]:
        c +=1      
accuracy2 = c/len(Y_test2)
#print("Accuracy for 2nd fold: ",accuracy2)

model1.fit(X_train3,Y_train3.flatten())
y = model1.predict(X_test3)
c=0
for i in range(len(Y_test3)):
    if Y_test3[i]==y[i]:
        c +=1      
accuracy3 = c/len(Y_test3)
#print("Accuracy for 3rd fold: ",accuracy3)

model1.fit(X_train4,Y_train4.flatten())
y = model1.predict(X_test4)
c=0
for i in range(len(Y_test4)):
    if Y_test4[i]==y[i]:
        c +=1      
        
accuracy4 = c/len(Y_test4)
#print("Accuracy for 4th fold: ",accuracy4)

model1.fit(X_train5,Y_train5.flatten())
y = model1.predict(X_test5)
c=0
for i in range(len(Y_test5)):
    if Y_test5[i]==y[i]:
        c +=1      
accuracy5 = c/len(Y_test5)
#print("Accuracy for 5th fold: ",accuracy5)

avg_acc3 = (accuracy1+accuracy2+accuracy3+accuracy4+accuracy5)/5
print("Average accuracy (k=15) is: ",avg_acc3*100, "%")


plt.plot([1,2,15],[avg_acc1,avg_acc2,avg_acc3])
plt.xlabel("k")
plt.ylabel("Average Accuracy")
plt.savefig("ps4-2-a.png")
plt.show()


#-----------------------------------PART 3--------------------------------#

print("\nPART 3\n")
data3 = loadmat("hw4_data3.mat")
X_train = data3["X_train"]
Y_train = data3["y_train"]
X_test = data3["X_test"]
Y_test = data3["y_test"]

y_predict = logReg_multi(X_train,Y_train,X_test)

sum_=0
for i in range(len(y_predict)):
    if Y_test[i]==y_predict[i]:
        sum_+=1
        
accuracy = sum_/len(y_predict)

print("Testing accuracy: ",accuracy*100, "%")

y_predict = logReg_multi(X_train,Y_train,X_train)

sum_=0
for i in range(len(y_predict)):
    if Y_train[i]==y_predict[i]:
        sum_+=1
        
accuracy = sum_/len(y_predict)

print("Training accuracy: ",accuracy*100, "%")

