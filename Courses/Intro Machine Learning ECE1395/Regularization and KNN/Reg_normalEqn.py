# -*- coding: utf-8 -*-
"""
Created on Tue Feb  7 10:32:00 2023

@author: RAYAN
"""

import numpy as np


def Reg_normalEqn(X_train, Y_train, lambda_):
    n = X_train.shape[1]
    
    v = [1]*n
    D = np.diag(v)
    D[0][0]=0
    x1 = np.matmul(X_train.T,X_train)
    x2 = lambda_*D

    theta = np.matmul(np.linalg.pinv(x1+x2),X_train.T)
    theta = np.matmul(theta,Y_train)
    return theta
