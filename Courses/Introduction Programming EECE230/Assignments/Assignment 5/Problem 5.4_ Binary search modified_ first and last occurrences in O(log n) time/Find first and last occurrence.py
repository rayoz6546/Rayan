#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 14:38:09 2019

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
def binarySearchLastOccurrence(L,x):
    n  = len(L)
    low = 0
    high = n-1
    temporary=-1
    while low<=high: 
        mid = (low+high)//2
        if L[mid] == x: 
            low=mid+1
            temporary=mid
        elif L[mid]<x:
            low = mid+1
        else:
            high = mid-1
    return temporary
def binarySearchFirstAndLastOccurrences(L,x):
    i1=binarySearchFirstOccurrence(L,x)
    i2=binarySearchLastOccurrence(L,x)
    return (i1,i2)
print(binarySearchFirstAndLastOccurrences([], 3))
print(binarySearchFirstAndLastOccurrences([5], 3))
print(binarySearchFirstAndLastOccurrences([5], 5))
print(binarySearchFirstAndLastOccurrences([3,5,5,5], 5))
print(binarySearchFirstAndLastOccurrences([3,5,5,5,5], 1))
print(binarySearchFirstAndLastOccurrences([3,5,5,5,5], 2))
print(binarySearchFirstAndLastOccurrences([3,5,7,7,7,15,26,30,33], 7))
print(binarySearchFirstAndLastOccurrences([3,5,7,7,7,15,26,30,33], 33))
print(binarySearchFirstAndLastOccurrences([3,5,7,7,7,15,26,30,33], 12))
print(binarySearchFirstAndLastOccurrences([3,3,5,7,15,26,30,33], 26))
print(binarySearchFirstAndLastOccurrences([3,3,3,3,3,3,3,3,3,3], 3))