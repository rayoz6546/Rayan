#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 12 18:16:50 2019

@author: ahmadbeydoun
"""

def recBinarySearch(L,x,low,high):
    if low>high:
        return True
    mid=(low+high)//2
    if L[mid]==x:
        return False
    elif L[mid]>x:
        return recBinarySearch(L,x,low,mid-1)
    else:
        return recBinarySearch(L,x,mid+1,high)
def elementDistinctnessFast(L):
    A=L[:]
    A.sort()
    n=len(A)
    i=0
    for x in A:
        i+=1
        if i<n:
            if recBinarySearch(A,x,i,n)==False:
                return False
    return True
print(elementDistinctnessFast([1,2,5,10,3,31,32,33,37,50,250]))
print(elementDistinctnessFast([1,2]))
print(elementDistinctnessFast([1]))
print(elementDistinctnessFast([]))
print(elementDistinctnessFast([1,2,5,2,10]))
print(elementDistinctnessFast([10,1,2,10]))
print(elementDistinctnessFast([1,2,5,10,3,31,32,33,37,5,250]))
print(elementDistinctnessFast([2,2]))