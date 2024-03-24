#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 13:19:25 2019

@author: ahmadbeydoun
"""

s=input("Enter integers separated by spaces:")
L=s.split()
for i in range(len(L)):
    x=int(L[i])
    L[i]=x
    print (L)
e=int(input("Enter integer to find: "))
is_found=False
for i in range(len(L)):
    if e==L[i]:
        print (e,"is in list")
        is_found=True
        break
if not is_found:
        print (e, "is not in list")