#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 14:08:19 2019

@author: ahmadbeydoun
"""

print ("Enter 3 numbers:")
x=float(input("Enter first number:"))
y=float(input("Enter second number:"))
z=float(input("Enter third number:"))
if x>y:
    if x>z:
        print ("The max is",x)
    else:
        print ("The max is",z)
else:
    if x>z:
        print ("The max is",y)
    else:
        if z<y:
            print ("The max is",y)
        else:
            print ("The max is",z)