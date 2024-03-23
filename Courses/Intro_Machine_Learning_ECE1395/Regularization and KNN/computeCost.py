# -*- coding: utf-8 -*-
"""
Created on Sat Jan 28 18:51:52 2023

@author: RAYAN
"""
import numpy as np

def computeCost(X,y,theta):
    

    m=len(X) # nbre of rows
    h = np.dot(X,theta)
    cost = (1/(2*m))*(np.sum(np.square(h-y)))
    
    return cost

