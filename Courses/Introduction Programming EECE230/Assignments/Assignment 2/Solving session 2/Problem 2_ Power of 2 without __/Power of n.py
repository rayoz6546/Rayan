#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Sep 13 11:41:46 2019

@author: ahmadbeydoun
"""

m=int(input("Enter a number:"))
n=int(input("To the power of n:"))
x=1
if n==0:
    print (m,"to the power of",n,"is",1)
elif n>0:
    for i in range(1,n+1,1):
        x=m*x
    print (m,"to the power of",n,"is",x)
else:
    for i in range(1,n+1,-1):
        x=x/m
    print (m,"to the power of",n,"is",x)