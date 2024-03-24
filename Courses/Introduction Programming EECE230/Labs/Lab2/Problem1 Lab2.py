# -*- coding: utf-8 -*-
"""
Created on Mon Feb  3 11:35:43 2020

@author: RAYAN
""" 
food=int(input("Enter price of food:"))
drinks=int(input("Enter price of drinks:"))
people=int(input("Enter number of people:"))
total1=food+drinks
tip=total1*0.15
total2=total1+tip
import math
share= math.ceil(total2/(1000*people))
print("Share:",1000*share)

