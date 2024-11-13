#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  2 14:20:18 2019

@author: ahmadbeydoun
"""

def appendString(fileName,s):
    try:
        nameHandle=open(fileName,"a")
        nameHandle.write(s)
        nameHandle.close()
    except FileNotFoundError:
        nameHandle=open(fileName,"w")
        nameHandle.write(s)
        nameHandle.close()
appendString("test10.txt","This was added in Part (b)")