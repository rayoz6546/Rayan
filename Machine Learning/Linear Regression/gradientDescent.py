# -*- coding: utf-8 -*-
"""
Created on Sat Jan 28 19:03:28 2023

@author: RAYAN
"""
import numpy as np
import random
from computeCost import computeCost

def gradientDescent(X_train, y_train, alpha, iters):
    m = len(X_train) # number of rows (nbre of training samples)
    n = (X_train.shape)[1] # number of columns (nbre of features)
    theta = []
    for i in range(n):
        theta.append(random.random())
    theta = np.array(theta)
    costs=[0]*iters
    
    for a in range(iters):
        
        for j in range(n):
            sum_=0
            for i in range(m):
                h = np.dot(X_train[i], theta)
                sum_ += (h-y_train[i])*X_train[i][j]
            
            theta[j]= theta[j] - alpha*(1/m)*sum_
            
        costs[a] = computeCost(X_train, y_train, theta)
    
    costs=np.array(costs)  # array that shows values of cost for different theta values
    cost = costs[iters-1]   # the final cost corresponding to final theta value
    return theta, cost, costs


