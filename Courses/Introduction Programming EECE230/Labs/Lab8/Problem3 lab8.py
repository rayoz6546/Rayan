# -*- coding: utf-8 -*-
"""
Created on Fri Mar 27 01:31:59 2020

@author: RAYAN
"""

# Part a
def binarySearchFirstOccurence(L,x):
    n=len(L)
    i=0    #start 
    j=n-1   #end
    result=-1
    while i<=j:
        middle=(i+j)//2
        if L[middle]==x:
            result=middle
            j=middle-1
        if L[middle]<x:
            i=middle+1
        else:
            j=middle-1
    return result
        
#print(binarySearchFirstOccurence([],3))
#print(binarySearchFirstOccurence([5],3))
#print(binarySearchFirstOccurence([5],5))
#print(binarySearchFirstOccurence([3,5,5,5],5))
#print(binarySearchFirstOccurence([3,5,5,5,5],1))
#print(binarySearchFirstOccurence([3,5,5,5,5],2))
#print(binarySearchFirstOccurence([3,5,7,7,7,15,26,30,33],7))
#print(binarySearchFirstOccurence([3,5,7,7,7,15,26,30,33],33))
#print(binarySearchFirstOccurence([3,5,7,7,7,15,26,30,33],12))
#print(binarySearchFirstOccurence([3,3,5,7,15,26,30,33],26))

# Part b
def binarySearchFirstAndLastOccurences(L,x):
    result1=binarySearchFirstOccurence(L,x)
    n=len(L)
    i=0    
    j=n-1   
    result2=-1
    while i<=j:
        middle=(i+j)//2
        if L[middle]==x:
            result2=middle
            i=middle+1       # because here we want the last occurence, so we want to
                             # see if x is also found after L[middle] 
                             #(list being sorted in increasing order)
                             # if it's not, then the middle is the final answer
        elif L[middle]<x:
            i=middle+1
        else:
            j=middle-1
    return (result1,result2)
print(binarySearchFirstAndLastOccurences([],3))
print(binarySearchFirstAndLastOccurences([5],3))
print(binarySearchFirstAndLastOccurences([5],5))
print(binarySearchFirstAndLastOccurences([3,5,5,5],5))
print(binarySearchFirstAndLastOccurences([3,5,5,5,5],1))
print(binarySearchFirstAndLastOccurences([3,5,5,5,5],2))
print(binarySearchFirstAndLastOccurences([3,5,7,7,7,15,26,30,33],7))
print(binarySearchFirstAndLastOccurences([3,5,7,7,7,15,26,30,33],33))
print(binarySearchFirstAndLastOccurences([3,5,7,7,7,15,26,30,33],12))
print(binarySearchFirstAndLastOccurences([3,3,5,7,15,26,30,33],26))






