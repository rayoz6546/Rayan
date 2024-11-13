#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 15:58:18 2019

@author: ahmadbeydoun
"""

n = int(input("Enter number n of  integers:"))
if n==0:
    print ("Empty list")
else:
    maximum=int(input("Enter an integer:"))
    i=1
    while i<n:
        x=int(input("Enter an integer:"))
        if maximum<x:
            maximum=x
        i+=1
    print("Maximum:", maximum)