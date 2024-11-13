#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 14:22:17 2019

@author: ahmadbeydoun
"""

def binarySearchFirstOccurrence(L,x):
    n  = len(L)
    low = 0
    high = n-1
    temporary=-1
    while low<=high: 
        mid = (low+high)//2
        if L[mid] == x: 
            high=mid-1
            temporary=mid
        elif L[mid]<x:
            low = mid+1
        else:
            high = mid-1
    return temporary
print(binarySearchFirstOccurrence([],3))
print(binarySearchFirstOccurrence([5],3))
print(binarySearchFirstOccurrence([5],5))
print(binarySearchFirstOccurrence([3,5,5,5],5))
print(binarySearchFirstOccurrence([3,5,5,5,5],1))
print(binarySearchFirstOccurrence([3,5,5,5,5],2))
print(binarySearchFirstOccurrence([3,5,7,7,7,15,26,30,33],7))
print(binarySearchFirstOccurrence([3,5,7,7,7,15,26,30,33],33))
print(binarySearchFirstOccurrence([3,5,7,7,7,15,26,30,33],12))
print(binarySearchFirstOccurrence([3,3,5,7,15,26,30,33],26))
print(binarySearchFirstOccurrence([3,3,3,3,3,3,3,3,3,3],3))