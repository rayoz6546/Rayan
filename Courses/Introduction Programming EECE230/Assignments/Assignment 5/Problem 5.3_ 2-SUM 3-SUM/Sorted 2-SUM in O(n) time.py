#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 12:52:56 2019

@author: ahmadbeydoun
"""

def linearSorted2Sum(L,t):
    n=len(L)
    L.sort()
    i=0
    j=n-1
    while i<=j:
        x=L[i]+L[j]
        if x==t:
            return True
        elif x>t:
            j-=1
        else:
            i+=1
    return False
L = [-6, 1, 3, 5, 7, 8, 9, 11]
print(linearSorted2Sum(L,14))
print(linearSorted2Sum(L,12))
print(linearSorted2Sum(L,15))
print(linearSorted2Sum(L,3))
print(linearSorted2Sum(L,0))
print(linearSorted2Sum(L,7))
print(linearSorted2Sum(L,21))