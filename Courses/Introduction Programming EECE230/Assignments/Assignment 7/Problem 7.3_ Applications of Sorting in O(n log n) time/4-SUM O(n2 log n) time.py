#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Nov 17 20:14:34 2019

@author: ahmadbeydoun
"""

def twoSumFast(L,t):
    n=len(L)
    i=0
    j=n-1
    while i<=j: 
        if L[i]+L[j]==t: 
            return True
        elif L[i]+L[j]>t:  
            j-=1
        else: 
            i+=1
    return False 
def fourSumFast(L,t):
    n = len(L)
    A = []
    for i in range(n):  
        for j in range(i,n):
            A.append(L[i]+L[j])
    A.sort()
    return twoSumFast(A,t)
L = [13,5,7,9,112,16,27,31]
print(fourSumFast(L,24))
print(fourSumFast(L,40))
print(fourSumFast(L,62))
print(fourSumFast(L,98))
print(fourSumFast(L,0))
print(fourSumFast(L,10))
print(fourSumFast(L,29))
print(fourSumFast(L,89))