#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 14:28:12 2019

@author: ahmadbeydoun
"""

def reverse(L):
    C=[0]*len(L)
    for i in range(len(L)):
        C[i]=L[len(L)-1-i]
#    for i in range(len(L)):
#        L[i]=C[i]
    L[:]=C[:]
        
L = [10,5, 17]
reverse(L)
print(L)
L = [10,5, 17]
L.reverse()
print(L)