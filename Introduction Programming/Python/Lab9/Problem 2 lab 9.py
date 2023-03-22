# -*- coding: utf-8 -*-
"""
Created on Fri Apr  3 17:57:05 2020

@author: RAYAN
"""

# Part a
def recPowerSlow(x,n):
    if n==0:
        return 1 
    elif n>0:
        return x*(recPowerSlow(x,n-1))
    else:
        return 1/(recPowerSlow(x,-n))
print("recPowerSlow(3,0):",recPowerSlow(3,0))
print("recPowerSlow(3,1):",recPowerSlow(3,1))
print("recPowerSlow(-3,1):",recPowerSlow(-3,1))
print("recPowerSlow(2,4):",recPowerSlow(2,4))
print("recPowerSlow(2,-4):",recPowerSlow(2,-4))
print("1.75**57\t     :",1.75**57)
print("recPowerSlow(1.75,57):",recPowerSlow(1.75,57))

# Part b
def recPowerFast(x,n):
    if n==0:
        return 1
    elif n==1:
        return x
    elif n>=1:
        if n%2==0: # In the case where n is even ex: x^8=(x^4)^2
            y=recPowerFast(x,n/2)
            return y*y
        else:   # If n is an odd number ex: x^9 = (x^8)x = ((x^4)^2)x
            a=n-1
            y=recPowerFast(x,a/2)
            return y*y*x
    else:     
        a=-n
        if a%2==0:
            y=recPowerFast(x,a/2)
            return 1/(y*y)
        else:
            b=a-1
            y=recPowerFast(x,b/2)
            return 1/(y*y)
print("recPowerFast(3,0):",recPowerFast(3,0)) 
print("recPowerFast(3,1):",recPowerFast(3,1)) 
print("recPowerFast(-3,1):",recPowerFast(-3,1)) 
print("recPowerFast(2,4):",recPowerFast(2,4)) 
print("recPowerFast(2,-4):",recPowerFast(2,-4)) 
print("1.75**57\t     :",1.75**57)
print("recPowerFast(1.75,57):",recPowerFast(1.75,57))
            
            
            



    