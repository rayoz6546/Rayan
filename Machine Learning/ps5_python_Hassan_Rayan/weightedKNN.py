# -*- coding: utf-8 -*-
"""
Created on Thu Feb 16 10:49:14 2023

@author: RAYAN
"""
from scipy.spatial import distance
import numpy as np



def weightedKNN(X_train,Y_train,X_test,sigma):
    n=len(X_test)
    X_test = np.reshape(X_test,(1,n))
    w = np.exp(-(distance.cdist(X_train,X_test)**2)/(sigma**2))
    
    weight_count = [0,0,0]
    for i in range(3):
        weight_count[i] = np.sum((Y_train==i+1)*w)

    y_predict = weight_count.index(max(weight_count)) +1
    
    return y_predict

    
