#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 14:24:43 2019

@author: ahmadbeydoun
"""

def linearSearch(L,e):
    for i in range(len(L)):
        if L[i]==e:
            return i
    return -1
    
L=[5,10,12,3,12,14]
print(linearSearch(L,12))
print(L.index(12))
print(linearSearch(L,20))