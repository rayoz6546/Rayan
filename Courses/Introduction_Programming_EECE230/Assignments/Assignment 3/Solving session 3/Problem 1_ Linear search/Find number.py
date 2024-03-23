#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:18:39 2019

@author: ahmadbeydoun
"""

s=input("Enter integers separated by spaces:")
L_st=s.split()
L=[0]*len(L_st)
for i in range(len(L_st)):
    x=int(L_st[i])
    L[i]=x
e=int(input("Enter integer to find: "))
is_found=False
for i in range(len(L)):
    if e==L[i]:
        print (e,"is in list")
        is_found=True
        break
if not is_found:
        print (e, "is not in list")