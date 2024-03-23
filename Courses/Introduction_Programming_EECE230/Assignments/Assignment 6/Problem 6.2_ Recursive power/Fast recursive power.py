#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov  5 23:04:08 2019

@author: ahmadbeydoun
"""

def recPowerFast(x,n):
    if n==0:
        return 1
    elif n==1:
        return x
    elif n>=1:
        if n%2==0: #if n is an even number we split it into 2 such as for example x^8=(x^4)^2
            y=recPowerFast(x,n/2)
            power=y*y
            return power
        else: #if n is an odd number we substract 1 from n and we do the same as if it was an even number
            #then we multiply the end result by x such as for example x^9=x^8*x=((x^4)^2)*x
            m=n-1
            y=recPowerFast(x,m/2)
            power=y*y*x
            return power
    else:
        m=-n
        if m%2==0:
            y=recPowerFast(x,m/2)
            power=1/(y*y)
            return power
        else:
            m2=m-1
            y=recPowerFast(x,m2/2)
            power=1/(y*y)
            return power
print("recPowerFast(0,0):",recPowerFast(0,0)) 
print("recPowerFast(0,3):",recPowerFast(0,3)) 
print("recPowerFast(3,0):",recPowerFast(3,0)) 
print("recPowerFast(3,1):",recPowerFast(3,1)) 
print("recPowerFast(-3,1):",recPowerFast(-3,1)) 
print("recPowerFast(2,4):",recPowerFast(2,4)) 
print("recPowerFast(2,-4):",recPowerFast(2,-4)) 
x = 1.25
n = 82
print(x,"**",n,"              :",x**n)
print("recPowerFast(",x,",",n,"):",recPowerFast(x,n))