#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov  5 23:56:42 2019

@author: ahmadbeydoun
"""

def recursiveModeFinder(L,low,high):
    if len(L)==1:
        return 0
    else:
        n=len(L)
        mid=(low+high)//2
        while low<high:
            if L[mid-1]<L[mid] and L[mid+1]<L[mid]:
                return mid
            elif L[mid-1]>L[mid]:
                high=mid-1
                return recursiveModeFinder(L,low,high)
            else:
                low=mid+1
                return recursiveModeFinder(L,low,high)
    if L[0]<L[1]:
        return n-1
    elif L[0]>L[1]:
        return 0
L = [1,2,4,7,11,10,8,4,-9]
print(recursiveModeFinder(L,0,len(L)-1))
L = [1,2,5,20]
print(recursiveModeFinder(L,0,len(L)-1))
L =[50,2,1]
print(recursiveModeFinder(L,0,len(L)-1))
L = [1]
print(recursiveModeFinder(L,0,len(L)-1))