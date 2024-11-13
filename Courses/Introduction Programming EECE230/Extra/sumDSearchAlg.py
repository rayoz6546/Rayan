#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr  9 10:34:03 2020

@author: hazemhajj
"""

#Given a list
#find the locations of the 2-SUM

#Start with i=0 going to len (L)

#Create the dictionary, call it D
# Use a dictionary and store [key:value ] = [L[i], i]
L = [2,3,2,5]
t = 8
D = {}
#!!! Be careful, this will store the last occurence of L[i]
for i in range(len(L)):
    D[L[i]] = i
print(D)
found = False
# Given Li], check if there is L[j] = t - L[i]
for i in range(len(L)):
    #Search becomes a simple and fast lookup in the dictionary
    k = t -L[i]
    if (k in D) and (i != D[k]):
        print(i,D[k])
        found = True
        break

print(found)
if not found:
    print(-1,-1) 

    