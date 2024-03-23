#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 15:30:49 2019

@author: ahmadbeydoun
"""

n=int(input("Enter integer n:"))
y=1
if n<0:
    print ("Negative Number!")
elif n==0:
    print ("Factorial of",n,"is:",y)
else:
    for i in range(1,n+1,1):
        y=y*i
    print ("Factorial of",n,"is:",y)