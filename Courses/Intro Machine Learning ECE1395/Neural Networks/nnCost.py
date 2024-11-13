# -*- coding: utf-8 -*-
"""
Created on Mon Apr  3 08:19:25 2023

@author: RAYAN
"""

import numpy as np
from predict import predict
import math
from sigmoid import sigmoid

def nnCost(Theta1, Theta2, X, y, K, lambda_):
    
    Y=[]
    
    for i in range(len(y)):
        if y[i][0]==1:
            Y.append([1,0,0])
        elif y[i][0]==2:
            Y.append([0,1,0])
        else:
            Y.append([0,0,1])
            
    Y=np.array(Y)
    
    h = predict(Theta1,Theta2,X)[1]
    
    
    m = len(X)
    
    c= 0
    for i in range(m):
        Y[i]=np.reshape(Y[i],(1,K))
             
        c += np.matmul(Y[i],np.log(h[i])) + np.matmul(1-Y[i],np.log(1-h[i]))
        
    c = (-1/m)*c
    

    #regularization
    
    term1=0
    
    for i in range(1,len(Theta1)):
        for j in range(1,len(Theta1[0])):
            term1 += Theta1[i][j]**2

    
    term2 = 0
    for i in range(len(Theta2)):
        for j in range(1,len(Theta2[0])):
            term2 += Theta2[i][j]**2
        
    t = (lambda_/(2*m))*(term1+term2)
    
    cost = c + t

    return cost

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    