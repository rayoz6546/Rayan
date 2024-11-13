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
t=int(input("Enter tip in percentage:"))
total=x+y
tip=t/100
totaltip=total*(1+(tip))
a=totaltip/z
s=math.ceil(a/1000)
share=s*1000
print("Share=",share)