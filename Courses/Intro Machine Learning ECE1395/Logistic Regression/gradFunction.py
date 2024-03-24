# -*- coding: utf-8 -*-
"""
Created on Mon Jan 30 16:38:14 2023

@author: RAYAN
"""

import numpy as np

from sigmoid import sigmoid


def gradFunction(theta,X_train, y_train):
    m = X_train.shape[0]
    
    x = np.dot(X_train,theta)
    
    h= sigmoid(x)
    
    g = (1/m)*np.dot(X_train.transpose(),h-y_train)

    return g

















