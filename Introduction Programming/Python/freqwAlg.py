#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr  9 10:11:50 2020

@author: hazemhajj
"""


#open file for reading

#read the content of the file into a big list of strings

#split the list into individual strings
L = ['I', 'ate', 'an', 'apple', 'and', 'an', 'orange', '.']

#Now count the frequency of every word
# Assume we will store the count list in a dicitionary
    #{'I': 1, 'an': 2,..}, let's say we call it D.
D = {}

# loop through all the strings
for i in range(len(L)):
    
    # if the string already exists in my count list of strings
    # Then update the count
    
    #Note that the key in the dictionary is one of the words in the list
    if L[i] in D:
        D[L[i]] += 1
#Else
    # everytime I encounter a new string, I create an entry 
    # in my count list and set it to 1
    else:
        D[L[i]] = 1
        

    

