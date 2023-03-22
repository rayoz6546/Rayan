#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Apr  8 23:29:43 2019

@author: hazemhajj
"""

#Read dictionary from file
def readDict(iFileName):
    fHandle = open(iFileName, 'r')
    D = {} # intialize empty dictionary D : keys = words, values= frequencies  
    for line in fHandle:  # loop over lines
        L = line.split()
        w=L[0]
        D[w]=L[1]
    fHandle.close()
    return D

#Create reverse dictionary count:word list
def create_revD(D):
    Drev = {}
    for w in D:
        if D[w] in Drev:
            Drev[D[w]].append(w)
        else:
            Drev[D[w]] = [w]
    return Drev

def  merge(L, R):
    """ Assumes L (left) and R (right) are lists of numbers sorted in non-decreasing order
        Returns a list C consisting L and R merged in non-decreasing order """
    C = []     ## intialize C to the empty list
    m = len(L)
    n = len(R)
    i = 0 # counter to traverse L 
    j = 0 # counter to traverse R
    while i!=m and j !=n: 
        if L[i]>R[j]: 
            C.append(L[i])
            i+=1
        else: 
            C.append(R[j])
            j+=1
    while i!=m:
        C.append(L[i])
        i+=1       
    while j!=n: 
        C.append(R[j])
        j+=1      
    return C


def mergeSort(A,low,high): 
    """ Assumes that A[low...high] is a list of numbers
         Modifies input list A[low...high] by sorting it in non-decreasing order 
         (does not return another list)"""
    # Base case: if low==high, in which case nothing to be done: 
    #  as a size-1    list is already sorted
    if low<high: 
        mid = (low+high)//2
        mergeSort(A,low,mid) # first recursive call 
        mergeSort(A,mid+1,high) # second recursive call 
        A[low:high+1]=merge(A[low:mid+1],A[mid+1:high+1])
     

########################
# Start of Program
########################
D = readDict("dummy")
for w in D:
    print(w,D[w]) 
    
# Create an inverse dictionary by count
Drev = create_revD(D)
print("Now print by values")
for w2 in Drev:
    print(w2,Drev[w2])

#Create list to sort by mergeSort
L = []
for w2 in Drev:
    L.append(int(w2))

print(L)

#Notice I changed MergeSort to sort in decreasing order
mergeSort(L,0,len(L))
print(L)

# Now reorganize Drev:
Dsorted = {}
for i in range(len(L)):
    Dsorted[L[i]] = Drev[str(L[i])]
    
for w3 in Dsorted:
    print(w3,Dsorted[w3])

#Finally print it in words per line
print("\n Finally Sorted ... \n")
for w3 in Dsorted:
    L = Dsorted[w3]
    for j in range(len(L)):
        print(L[j], w3)
 
#Print to file
fHandle = open("ResFile.txt", 'w')
for w3 in Dsorted:
    L = Dsorted[w3]
    for j in range(len(L)):
        fHandle.writelines(str(L[j])+" "+str(w3)+"\n")
fHandle.close()
