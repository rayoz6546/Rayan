#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 15:39:05 2019

@author: ahmadbeydoun
"""

n = int(input("Enter number n of  integers:"))
x=0
i=0
if n==0:
    print ("Empty list")
else:
    while i<n:
        m=int(input(""))
        if i==0:
            x=m
        if m>x:
            x=m
        i+=1
    print("Maximum:",m)