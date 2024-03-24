#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 14:53:02 2019

@author: ahmadbeydoun
"""

n=int(input("Enter count of numbers:"))
c=0
m=0
while c<n:
    x=int(input(":"))
    if c==0:
        m=x
    if x>m:
        m=x
    c+=1
print ("The largest number is",m)