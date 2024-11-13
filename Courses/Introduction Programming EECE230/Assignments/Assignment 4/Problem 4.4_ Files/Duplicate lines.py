#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  2 14:33:49 2019

@author: ahmadbeydoun
"""

def duplicateLines(fileName):
    n=len(fileName)
    assert fileName[n-4:n]==".txt", "File is not .txt"
    nameHandle=open(fileName,"r")
    name=fileName[:n-4]
    nameHandle2=open(name+"Duplicated.txt","w")
    for line in nameHandle:
        nameHandle2.write(2*line)
    nameHandle.close()
    nameHandle2.close()
duplicateLines("test.txt")