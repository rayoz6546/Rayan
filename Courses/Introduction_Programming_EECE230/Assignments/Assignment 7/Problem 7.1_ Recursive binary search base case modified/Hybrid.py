#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 12 17:14:37 2019

@author: ahmadbeydoun
"""

def searchHybrid(L,x): # Wrapper function
    def linearSearch(L,x,low,high):
        for i in range(low,high):
            if L[i]==x:
                return i
        return -1
    def recBinarySearchHybrid(L,x,low,high):
        mid=(low+high)//2
        while low<=high and 0<=mid<=n-1:
            if L[mid]==x:
                return mid
            elif L[mid]>=x:
                high=mid-1
                return recBinarySearchHybrid(L,x,low,high)
            else:
                low=mid+1
                return recBinarySearchHybrid(L,x,low,high)
        return -1
    n=len(L)
    if n<5:
        return linearSearch(L,x,0,n)
    else:
        return recBinarySearchHybrid(L,x,0,n)
print("searchHybrid([],3):",searchHybrid([], 3))
print("searchHybrid([5],3):",searchHybrid([5], 3))
print("searchHybrid([5], 5):",searchHybrid([5], 5))
L = [2*i for i in range(21)] # L = [0,2,....,40]
print("L=",L)
print("searchHybrid(L, i) for i =-1,..., 41:")
for i in range(-1,42):
    print(searchHybrid(L,i),end=" ")