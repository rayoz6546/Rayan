#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov  5 23:00:55 2019

@author: ahmadbeydoun
"""

def recPowerSlow(x,n):
    if n==0:
        return 1
    elif n>0:
        power=x*recPowerSlow(x,n-1)
        return power
    else:
        power=1/recPowerSlow(x,-n)
        return power
print("recPowerSlow(0,0):",recPowerSlow(0,0)) 
print("recPowerSlow(0,3):",recPowerSlow(0,3)) 
print("recPowerSlow(3,0):",recPowerSlow(3,0)) 
print("recPowerSlow(3,1):",recPowerSlow(3,1)) 
print("recPowerSlow(-3,1):",recPowerSlow(-3,1)) 
print("recPowerSlow(2,4):",recPowerSlow(2,4)) 
print("recPowerSlow(2,-4):",recPowerSlow(2,-4)) 
x = 1.25
n = 82
print(x,"**",n,"          :",x**n)
print("recPower(",x,",",n,"):",recPowerSlow(x,n))