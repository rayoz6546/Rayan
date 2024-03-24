#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 16:20:44 2019

@author: ahmadbeydoun
"""

def indexOfMin(L,start,end):
    a=len(L)
    minimum=L[a-1]
    index=0
    for i in range(start,end):
        if minimum>=L[i]:
            minimum=L[i]
            index=i
    return index
def selectionSort(L):
    for i in range(len(L)):
        m=indexOfMin(L,i,len(L))
        temporary=L[i]  #we store the value of L[i] in a variable to
        L[i]=L[m]       #replace it with the minimum in the sublist
        L[m]=temporary
    return L
L=[10,4,3,7,3,15]
selectionSort(L)
print(L)
