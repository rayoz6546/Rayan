#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:14:21 2019

@author: ahmadbeydoun
"""

n=int(input("Enter the number of integers:"))
i=0
is_sorted=True
m=int(input("Enter number:"))
for i in range(n-1):
    x=int(input("Enter number:"))
    if m>x:
        is_sorted=False
    else:
        m=x
if is_sorted:
    print ("YES: input is sorted")
else:
    print ("NO: input is not sorted")