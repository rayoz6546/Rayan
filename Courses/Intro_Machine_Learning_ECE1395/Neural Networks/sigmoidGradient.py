# -*- coding: utf-8 -*-
"""
Created on Mon Apr  3 09:06:45 2023

@author: RAYAN
"""

from sigmoid import sigmoid

def sigmoidGradient(z):
    a = sigmoid(z)
    
    return a*(1-a)