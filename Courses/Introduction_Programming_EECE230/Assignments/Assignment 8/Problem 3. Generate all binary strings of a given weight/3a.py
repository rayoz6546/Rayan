#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 28 21:11:11 2019

@author: ahmadbeydoun
"""

def genBinStr2(n,w):
    L=[]
    if n<0 or w<0:
        return L
    elif n==w:
        return ["1"*n]
    x=genBinStr2(n-1,w)
    for s in x:
        L.append("0"+s)
    if w>0:
        y=genBinStr2(n-1,w-1)
        for s in y:
            L.append("1"+s)
    return L
print(genBinStr2(3,0))
print(genBinStr2(3,1))
print(genBinStr2(3,2))
print(genBinStr2(3,3))
print(genBinStr2(4,2))
print(genBinStr2(6,1))