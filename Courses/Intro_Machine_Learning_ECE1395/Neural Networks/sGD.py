# -*- coding: utf-8 -*-
"""
Created on Mon Apr  3 13:49:30 2023

@author: RAYAN
"""

import numpy as np
from sigmoidGradient import sigmoidGradient
from sigmoid import sigmoid
from nnCost import nnCost

def sGD(input_layer_size,hidden_layer_size,num_labels,X_train,Y_train,lambda_,alpha,MaxEpochs):
    
    Y=[]
    
    for i in range(len(Y_train)):
        if Y_train[i][0]==1:
            Y.append([[1],[0],[0]])
        elif Y_train[i][0]==2:
            Y.append([[0],[1],[0]])
        else:
            Y.append([[0],[0],[1]])
            
    Y=np.array(Y)
    



    
    n=len(X_train)
    
    ones = np.array([1]*X_train.shape[0])
    X = np.column_stack((ones,X_train))

    Theta1 = np.array([[0]*X.shape[1]]*hidden_layer_size)
    Theta2 = np.array([[0]*(hidden_layer_size+1)]*num_labels)
    Theta1 = np.random.uniform(-0.1,0.1,(hidden_layer_size,X.shape[1]))
    Theta2 = np.random.uniform(-0.1,0.1,(num_labels,(hidden_layer_size+1)))
    
    costs = []
    

    
    for ep in range(MaxEpochs):

        for tr_sample in range(n):


            a_1 = X[tr_sample]
            a_1=np.reshape(a_1,(X.shape[1],1))  #a_1
    
            z_2 = np.matmul(Theta1,a_1)
            
            a_2 = sigmoid(z_2)

            a_2=a_2.T
            a_2 = np.column_stack(([1],a_2))
            a_2=a_2.T     #a_2
            
            z_3=np.matmul(Theta2,a_2)
            h = sigmoid(z_3)  #a_3
            

            Y[tr_sample]=np.reshape(Y[tr_sample],(num_labels,1))

            e_3 = h - Y[tr_sample]


            gprime_2 = sigmoidGradient(z_2)
            

   
            t = np.matmul(Theta2.T,e_3)

            
            t = t[1:]
            
 
            e_2 = t*gprime_2
            

            delta_1 = e_2 * a_1.T
            delta_2 = e_3 * a_2.T
      
            
            d_1 = delta_1
            d_2 = delta_2
            
            d_1[1:] = delta_1[1:]+lambda_*Theta1[1:]
            d_2[1:] = delta_2[1:]+lambda_*Theta2[1:]

            Theta1 = Theta1 - alpha*d_1
            Theta2 = Theta2 - alpha*d_2
        
            
        c = nnCost(Theta1,Theta2,X_train,Y_train,num_labels,lambda_)

        costs.append(c)
            
    return Theta1,Theta2, costs
  
    
        

            

            



                    
            
            
    
    
    
    
    
    
    
    
    
    
    
    
    