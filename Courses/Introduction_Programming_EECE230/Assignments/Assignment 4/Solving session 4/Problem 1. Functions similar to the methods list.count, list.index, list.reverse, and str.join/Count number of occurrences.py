#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 14:13:24 2019

@author: ahmadbeydoun
"""

def count(L,e):
    c=0
    for i in range(len(L)):
        if L[i]==e:
            c+=1
    return c
    
L = [10,2,10,10,3,10]
print(count(L,10))
print(L.count(10))