#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:11:36 2019

@author: ahmadbeydoun
"""

n=int(input("Enter number:"))
is_square=False
if n<0:
    print (n,"is not a square")
else:
    for x in range(n+1):
        if n==x*x:
            is_square=True
            print ("YES square:",n,"=",x,"^",2)
            break
    if not is_square:
        print (n,"is not a square")