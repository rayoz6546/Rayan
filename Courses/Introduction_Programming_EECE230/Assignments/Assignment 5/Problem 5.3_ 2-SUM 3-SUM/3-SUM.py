#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 13:23:34 2019

@author: ahmadbeydoun
"""

def insertionSort(L):
    n = len(L)
    for j in range(1,n):
        key = L[j]
        i = j-1
        while  i>=0 and L[i] > key: 
                L[i+1] = L[i]
                i = i -1
        L[i+1] = key
def fast3Sum(L,t):
    insertionSort(L)
    n=len(L)
    for i in range(n):
        x=t-L[i]
        for j in range(n):
            y=x-L[j]
            low = 0
            high = n-1
            while low<=high: 
                mid = (low+high)//2
                if L[mid]==y: 
                    return True
                elif L[mid]<y:
                    low = mid+1
                else:
                    high = mid-1
    return False
L = [-6, 1, 3, 5, 7, 9, 11]
print(fast3Sum(L,2))
print(fast3Sum(L,5))
print(fast3Sum(L,7))
print(fast3Sum(L,15))
print(fast3Sum(L,19))
print(fast3Sum(L,0))
print(fast3Sum(L,1))
print(fast3Sum(L,18))
print(fast3Sum(L,20))
print(fast3Sum(L,28))