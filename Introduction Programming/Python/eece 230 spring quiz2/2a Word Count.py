# -*- coding: utf-8 -*-
"""
Based on code covered in lectures 
Original Author: lb13
"""


################################################
# Find frequencies (number of occurences)  of words in file


def wFreq(iFileName):
    nameHandle = open(iFileName, 'r')
    s = nameHandle.read() # read file into a string st 
    s = s.lower()
    L = s.split() # store words in list L 
    D = {} # intialize empty dictionary D : keys = words, values= frequencies  
    for w in L:  # loop over strings in list L 
        if w  not in D: # search for w in D
            D[w] = 1 # if not found: add w as a new word with frequency  1  
        else: 
            D[w] +=1 # inrement frequency of w if found 
    nameHandle.close()
    return D

def wCount(iFileName, oFileName):
    D = wFreq(iFileName)
    fHandle = open(oFileName, 'w')
    for w in D:
        print(w,D[w])
        fHandle.writelines(str(w)+" "+str(D[w])+"\n")
    fHandle.close()
wCount("myFile.txt", "dummy")    