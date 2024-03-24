#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  2 14:06:46 2019

@author: ahmadbeydoun
"""

def createFileOfStars(fileName,n):
    nameHandle=open(fileName,"w")
    for i in range(1,n+1):
        nameHandle.write(i*"*")
        nameHandle.write("\n")
    nameHandle.close()
createFileOfStars("test0.txt", 0)
createFileOfStars("test10.txt", 10)