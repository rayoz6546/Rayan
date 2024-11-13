#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 14:39:03 2019

@author: ahmadbeydoun
"""

n=int(input("Enter an integer n:"))
x=1
if n==0:
    print ("2 to the power of",n,"is",1)
elif n>0:
    for i in range(1,n+1,1):
        x*=2
    print ("2 to the power of",n,"is",x)
else:
    for i in range(n+1,1,1):
        x/=2
    print ("2 to the power of",n,"is",x)