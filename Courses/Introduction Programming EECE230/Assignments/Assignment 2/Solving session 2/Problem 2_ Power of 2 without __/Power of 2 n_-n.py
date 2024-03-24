#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 15:01:21 2019

@author: ahmadbeydoun
"""

n=int(input("Enter an integer n:"))
x=1
if n>=0:
    for i in range(n):
        x*=2
    print ("2 to the power of",n,"is",x)
else:
    for i in range(-n):
        x/=2
    print ("2 to the power of",n,"is",x)