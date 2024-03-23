#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 12 18:57:17 2019

@author: ahmadbeydoun
"""

def twoSumFast(L,t):
    n=len(L)
    A=L[:]
    A.sort()
    i=0
    j=n-1
    while i<=j: 
        if A[i]+A[j]==t: 
            return True
        elif A[i]+A[j]>t:  
            j-=1
        else: 
            i+=1
    return False 
L =[8,1,3,11,5,7,-6 ,9]
print(twoSumFast(L,14))
print(twoSumFast(L,12))
print(twoSumFast(L,15))
print(twoSumFast(L,3))
print(twoSumFast(L,0))
print(twoSumFast(L,7))
print(twoSumFast(L,21))