# -*- coding: utf-8 -*-
"""
Created on Wed Feb 26 16:23:04 2020

@author: rbh13
"""

def figure(n,c):
    for i in range(1,n+1):
        S=""
        S+=" "*(n-i)
        S+=c*(2**i)
        print(S)

n=int(input("Input number of lines:"))    
c=input("Input the filling character:")  
figure(n,c)