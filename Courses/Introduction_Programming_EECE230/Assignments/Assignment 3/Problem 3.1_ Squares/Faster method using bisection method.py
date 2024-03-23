#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:11:59 2019

@author: ahmadbeydoun
"""

n=int(input("Enter number:"))
is_square=False
low=1
high=n
mid=(low+high)//2
if n<0:
    print (n,"is not a square")
elif n==0:
    print ("YES square:",n,"=",0,"^",2)
else:
    while high>=low:
        mid=(low+high)//2
        if mid*mid>n:
            high=mid-1
        elif mid*mid<n:
            low=mid+1
        else:
            is_square=True
            print ("YES square:",n,"=",mid,"^",2)
            break
    if not is_square:
        print (n,"is not a square")