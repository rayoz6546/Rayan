#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Nov 11 12:34:11 2019

@author: ahmadbeydoun
"""

def moveDisks(n,start1=1,start2=2,destination=4,intermediate=3):
    """ Assumes n is an integer >=1 """
    if n>=2:
        moveDisks(n-1,start1,start2,intermediate,destination) 
    print("Move disk from ",start1," to ",destination)
    print("Move disk from ",start2," to ",destination)
    if n>=2:
        moveDisks(n-1,intermediate,intermediate,destination,start1)
print("moveDisks(1):")
moveDisks(1)
print("moveDisks(2):")
moveDisks(2)
print("moveDisks(3):")
moveDisks(3)
print("moveDisks(4):")
moveDisks(4)