#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 12:34:40 2019

@author: ahmadbeydoun
"""

def sorted2Sum(L,t):
    n=len(L)
    L.sort()
    for i in range(n):
        x=t-L[i]
        low = 0
        high = n-1
        while low<=high: 
            mid = (low+high)//2
            if L[mid] == x: 
                return True
            elif L[mid]<x:
                low = mid+1
            else:
                high = mid-1
    return False
L = [-6, 1, 3, 5, 7, 8, 9, 11]
print(sorted2Sum(L, 14))
print(sorted2Sum(L, 12))
print(sorted2Sum(L, 15))
print(sorted2Sum(L, 3))
print(sorted2Sum(L, 0))
print(sorted2Sum(L, 7))
print(sorted2Sum(L, 21))