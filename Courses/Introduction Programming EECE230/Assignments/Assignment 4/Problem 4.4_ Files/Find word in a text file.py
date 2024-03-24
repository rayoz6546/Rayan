#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct  1 17:27:09 2019

@author: ahmadbeydoun
"""

def isWordInFile(fileName,word):
    nameHandle=open(fileName,'r')
    s=nameHandle.read()
    if word in s:
        return True
    else:
        return False
    nameHandle.close()
fileName=input("Enter file name: ")
word=input("Enter word to find: ")
print (isWordInFile(fileName,word))