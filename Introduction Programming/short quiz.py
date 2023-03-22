# -*- coding: utf-8 -*-
"""
Created on Fri Mar 27 14:05:07 2020

@author: RAYAN
"""

# "I, Rayan Hassan, promise to conduct the in-lab quiz on my own without external help."
# Part a 
def binarySearch(L,e):
    L1=L[::-1]
    n=len(L1)
    i=0
    j=n-1
    while i<=j:
        middle=(i+j)//2
        if L1[middle]==e:
            return True
        elif L1[middle]<e:
            i=middle+1
        else:
            j=middle-1
    return False

# Part b
def sorted2Prod(L,p):
    List=L[::-1]
    n=len(List)
    found=False
    for i in range(n):
        if p!=0 and List[i]!=0:
            target=p/List[i]   # since we want to compare p to List[i] and the L1[middle]
            if binarySearch(L,target)==True:   # not "List" because it's already sorted 
                                               # in increasing 
                found=True
                break
#        else:            # this is for the case in which one of them is zero but its not working
#            found=True
#            break 
        
    
    return found

# Part c
    
L=[20,17,13,8,5,3,0,-6]
print(sorted2Prod(L,51))
print(sorted2Prod(L,15))
print(sorted2Prod(L,16))
print(sorted2Prod(L,2))
print(sorted2Prod(L,0))
print(sorted2Prod(L,23))
print(sorted2Prod(L,-48))
print(sorted2Prod(L,-27))
        
            