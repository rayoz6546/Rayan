#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov  6 15:59:07 2019

@author: ahmadbeydoun
"""

def fastIterativeModeFinder(L):
    if len(L)==1:
        return 0
    else:
        n=len(L)
        low=0
        high=n-1
        mid=(low+high)//2
        while low<high:
            if L[mid-1]<L[mid]>L[mid+1]:
                return mid
            elif L[mid-1]>L[mid]:
                high=mid-1
                mid=(low+high)//2
            else:
                low=mid+1
                mid=(low+high)//2
        if L[0]<L[1]:
            return n-1
        elif L[0]>L[1]:
            return 0
L = [1,2,4,7,11,10,8,4,-9]
print(fastIterativeModeFinder(L))
L = [1,2,5,20]
print(fastIterativeModeFinder(L))
L =[50,2,1]
print(fastIterativeModeFinder(L))
L = [1]
print(fastIterativeModeFinder(L))