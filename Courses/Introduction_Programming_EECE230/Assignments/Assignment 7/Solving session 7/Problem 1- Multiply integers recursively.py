#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 14:13:24 2019

@author: ahmadbeydoun
"""

def  recMult(x,y): 
    if y == 0:
        return 0
    elif y == 1:
        return x
    elif y%2==0: 
        value = recMult(x,y//2)
        return value+value
    else:
        value = recMult(x,(y-1)//2)
        return value+value+x
print("recMult(0,10):",recMult(0,10))
print("recMult(10,0):",recMult(10,0))
print("recMult(1,10):",recMult(1,10))
print("recMult(10,1):",recMult(10,1))
print("recMult(10,10):",recMult(10,10))
x = 938283283028302840284018401
y = 7325032757307325097320957320957
print("x= ", x)
print("y= ", y)
print("x*y         :",x*y)
print("recMult(x,y):",recMult(x,y))