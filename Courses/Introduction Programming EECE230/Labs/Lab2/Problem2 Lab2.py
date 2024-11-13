# -*- coding: utf-8 -*-
"""
Created on Mon Feb  3 12:47:03 2020

@author: RAYAN
"""

time=int(input("Enter elapsed time in seconds:"))
hours=(time/60)//60
minutes=(time-(hours*60*60))//60
seconds=(time-(hours*60*60))-(minutes*60)
print(int(hours)," : ",int(minutes)," : ",int(seconds))