#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep  4 15:00:04 2019

@author: ahmadbeydoun
"""

import math
x=int(input("Enter price of food:"))
y=int(input("Enter price of drinks:"))
z=int(input("Enter number of people:"))
total=x+y
tip=15/100
totaltip=total*(1+(15/100))
a=totaltip/z
s=math.ceil(a/1000)
share=s*1000
print("Share=",share)