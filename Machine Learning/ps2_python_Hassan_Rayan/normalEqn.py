# -*- coding: utf-8 -*-
"""
Created on Sat Jan 28 19:08:21 2023

@author: RAYAN
"""
import numpy as np

def normalEqn(X_train, y_train):
    X_transpose = X_train.transpose()
    first = np.matmul(X_transpose,X_train)
    inverse_first = np.linalg.inv(first)
    second = np.matmul(X_transpose,y_train)
    theta = np.matmul(inverse_first,second)
    f = y_train - (np.matmul(X_train,theta))
    cost = np.matmul(f.transpose(),f)
    return theta, cost

