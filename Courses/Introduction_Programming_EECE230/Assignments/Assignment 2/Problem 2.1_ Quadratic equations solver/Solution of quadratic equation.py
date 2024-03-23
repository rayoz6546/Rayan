#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 15:15:59 2019

@author: ahmadbeydoun
"""
print ("To find the solutions of the equation of type ax**2+bx+c")
a=float(input("Enter a:"))
b=float(input("Enter b:"))
c=float(input("Enter c:"))
if a!=0:
    d=b**2-4*a*c
    if d==0:
        x=-b/(2*a)
        print ("The equation has one root:",x)
    elif d>0:
        x=(-b+d**0.5)/(2*a)
        y=(-b-d**0.5)/(2*a)
        print ("The equation has two roots:",x,"and",y)
    else:
        print ("The equation has no root")
else:
    print ("The equation is not a quadratic")
    