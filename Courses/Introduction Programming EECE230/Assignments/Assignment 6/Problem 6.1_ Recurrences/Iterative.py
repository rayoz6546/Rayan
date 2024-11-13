#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 16:02:02 2019

@author: ahmadbeydoun
"""

def fIterative(n):
    if n<=2:
        return 1 
    else:
        L=[1,1,1]
        for i in range(3,n+1):
            x=L[i-3]+L[i-2]+L[i-1]+L[int(i/3)]
            L.append(x)
    return L[n]
print("f(n) for n = 0...9:")
for i in range(10):
    print(fIterative(i), end=" ")