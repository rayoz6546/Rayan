#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov  6 16:21:51 2019

@author: ahmadbeydoun
"""

def moveDisks(n,start=1,destination=3,intermediate=2):
    """ Assumes n is an integer >=1 """
    if n>=2:  # first recursive call
        moveDisks(n-1, start,intermediate,destination) 
    print("Move disk ", n, " from ", start, " to ", destination)
    # Base case: if n==1, only this print  will be executed
    if n>=2:  # second recursive call
        moveDisks(n-1, intermediate,destination,start)
print("moveDisks(1):")
moveDisks(1)
print("moveDisks(2):")
moveDisks(2)
print("moveDisks(3):")
moveDisks(3)
print("moveDisks(4):")
moveDisks(4)