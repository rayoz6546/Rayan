#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep  4 16:02:54 2019

@author: ahmadbeydoun
"""

x=int(input("Enter elapsed time in seconds:"))
h=x//3600
m=(x//60)%60
s=x%60
print(h,":",m,":",s)