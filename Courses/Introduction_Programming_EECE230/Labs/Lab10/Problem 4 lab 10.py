# -*- coding: utf-8 -*-
"""
Created on Sat Apr 11 11:19:03 2020

@author: RAYAN
"""

def recFunctionHanoi(n,start_A=1,start_B=2,destination=4,intermediate=3):

    if n>=2:
        recFunctionHanoi(n-1,start_A,start_B,intermediate,destination) 
    print("Move disk from ",start_A," to ",destination)
    print("Move disk from ",start_B," to ",destination)
    if n>=2:
        recFunctionHanoi(n-1,intermediate,intermediate,destination,start_A)
print("Move for n=1:")

recFunctionHanoi(1)
print("Move for n=2:")
recFunctionHanoi(2)
print("Move for n=3:")
recFunctionHanoi(3)

