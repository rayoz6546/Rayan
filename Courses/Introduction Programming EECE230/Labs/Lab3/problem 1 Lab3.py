# -*- coding: utf-8 -*-
"""
Created on Wed Feb 12 14:04:03 2020

@author: rbh13
"""

x=int(input("Input grade:"))
if x>=40:
    if x<60:
        print("F")
    elif x==60:
        print("D")
    elif x==61 or x==62:
        print("D+")
    elif x<=65:
        print("C-")
    elif x<=68:
        print("C")
    elif x<=71:
        print("C+")
    elif x<=74:
        print("B-")
    elif x<=78:
        print("B")
    elif x<=82:
        print("B+")
    elif x<=86:
        print("A-")
    elif x<=92:
        print("A")
    elif x<=100:
        print("A+")
    else:
        print("Invalid grade")
else:
    print("Invalid grade")

        