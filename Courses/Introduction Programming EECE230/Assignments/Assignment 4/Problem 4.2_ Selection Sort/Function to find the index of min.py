#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 15:27:58 2019

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
    
s=input("Enter numbers separated by spaces:")
L=[int(x) for x in s.split()]
start=int(input("Enter start:"))
end=int(input("Enter end:"))
print(indexOfMin(L,start,end))