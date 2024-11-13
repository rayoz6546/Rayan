#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct  1 17:52:00 2019

@author: ahmadbeydoun
"""
#/Users/ahmadbeydoun/Desktop/Lab/Assigments:Problems/Assignment n//Problem n.n: x/y.txt
def wordSearch(fileName,word):
    nameHandle = open(fileName,"r")
    i=1
    a=0
    for line in nameHandle:
        if word in line:
            a=i
        else:
            i+=1
    nameHandle.close()
    return a
fileName=input("Enter file name: ")
word=input("Enter word to find: ")
print (wordSearch(fileName,word))