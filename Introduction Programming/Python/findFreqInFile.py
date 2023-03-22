# -*- coding: utf-8 -*-
"""
Created on Sun Oct 21 14:11:10 2018

@author: lb13
"""


################################################
# Find frequencies (number of occurences)  of words in file
print("-----------------------------")    
print("freqOffWordsInFile:")

def freqOfWordsInFile(fileName):
    nameHandle = open(fileName, 'r')
    s = nameHandle.read() # read file into a string st 
    L = s.split() # store words in list L 
    D = {} # intialize empty dictionary D : keys = words, values= frequencies  
    for w in L:  # loop over strings in list L 
        if w  not in D: # search for w in D
            D[w] = 1 # if not found: add w as a new word with frequency  1  
        else: 
            D[w] +=1 # inrement frequency of w if found 
    return D

D = freqOfWordsInFile("findFreqInFile.py")
for w in D:
    print("Word:",w,"   Frequency:",D[w])

    