# -*- coding: utf-8 -*-
"""
Created on Sat Apr  1 19:54:23 2023

@author: RAYAN
"""

import numpy as np
from sigmoid import sigmoid


def predict(Theta1, Theta2, X):
    ones = np.array([1]*X.shape[0])
    X = np.column_stack((ones,X))
    n=len(X)
    p = [[0]*n]
    p = np.array(p)
    p = np.reshape(p,(n,1))
    h_=[]
    
    for tr in range(n):
        a_1=X[tr]
        a_1=np.reshape(a_1,(X.shape[1],1))  #a_1

        z_2 = np.matmul(Theta1,a_1)
        a_2 = sigmoid(z_2)
    
        a_2=a_2.T
        a_2 = np.column_stack(([1],a_2))
        a_2=a_2.T     #a_2
        
        z_3=np.matmul(Theta2,a_2)
        h = sigmoid(z_3)  #a_3
        

        h_.append(h)

        max_=max(h)

        for j in range(len(h)):
            if max_==h[j]:
                p[tr]=j+1
                break
    h_=np.array(h_)
    h_=np.reshape(h_,(n,len(h)))
    
            
    return p, h_
    
    
    
    
    
    
    
    
    
    