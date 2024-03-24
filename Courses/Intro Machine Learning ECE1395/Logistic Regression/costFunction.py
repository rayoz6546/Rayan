# -*- coding: utf-8 -*-
"""
Created on Mon Jan 30 16:33:33 2023

@author: RAYAN
"""

import numpy as np

from sigmoid import sigmoid

def costFunction(theta,X_train,y_train):
    m = X_train.shape[0]

    x = np.dot(X_train,theta)
    
    h= sigmoid(x)
    
    cost = -(1/m)*np.sum(y_train*np.log(h)+(1-y_train)*np.log(1-h))

    return cost




