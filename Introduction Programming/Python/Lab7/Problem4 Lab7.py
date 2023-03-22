# -*- coding: utf-8 -*-
"""
Created on Wed Mar 18 07:15:49 2020

@author: RAYAN
"""

# Part a
def binarySearch(L,t):
    n=len(L)
    i=0    #start 
    j=n-1   #end
    while i<=j:
        middle=(i+j)//2
        if L[middle]==t:
            return middle
        elif L[middle]<t:
            i=middle+1
        else:
            j=middle-1
    return -1
            
def sorted2Sum(L,t):
    n=len(L)
    for k in range(n):
        targetNumber=t-L[k]
        if binarySearch(L,targetNumber)!=-1:
            return True
    return False

L=[-6,1,3,5,7,8,9,11]
print(sorted2Sum(L,14))
print(sorted2Sum(L,12))
print(sorted2Sum(L,15))
print(sorted2Sum(L,3))
print(sorted2Sum(L,0))
print(sorted2Sum(L,7))
print(sorted2Sum(L,21))
            
# Part b
def linearSorted2Sum(L,t):
    n=len(L)
    i=0
    j=n-1
    found=False
    while i<=j:
        summation=L[i]+L[j]
        if summation<t:         # logically because if L[i]+L[j]<t it means that this
            i+=1                # L[i] added to any other element will never going 
        elif summation>t:       # to give us t (list is SORTED), but will always give us
                                # something smaller than t, so we increase i by 1.
            j-=1                # and same reasoning if L[i]+L[j]>t...
        else:
            found=True
            break
    return found

L=[-6,1,3,5,7,8,9,11]
print(linearSorted2Sum(L,14))
print(linearSorted2Sum(L,12))
print(linearSorted2Sum(L,15))
print(linearSorted2Sum(L,3))
print(linearSorted2Sum(L,0))
print(linearSorted2Sum(L,7))
print(linearSorted2Sum(L,21))


# Part c
def fast3Sum(L,t):
    n=len(L)
    for i in range(n):
        for j in range(i,n):
            if L[j]<L[i]:         
                L[i],L[j]=L[j],L[i]    # swapping
    # so now our list is sorted
    k=0
    summationFound=False
    for k in range(n):
        
        targetNumber=t-L[k]
        if linearSorted2Sum(L,targetNumber)!=False:
            summationFound=True 
    
    return summationFound
# this means that for every k fixed, we will move i and j of the linearSearch2Sum
# function to see if we can find 2 elements of indexes i and j that can give us
# the target number when added to the element of index k. But for that we have to
# 'remove' L[k] every time (after each iteration). This is why I wrote range(k,n),
# but I can't figure out why it is not giving me the right answer.

L=[11,1,5,3,7,8,9,-6]
print(fast3Sum(L,2))
print(fast3Sum(L,5))
print(fast3Sum(L,7))
print(fast3Sum(L,15))
print(fast3Sum(L,19))
print(fast3Sum(L,0))
print(fast3Sum(L,1))      
print(fast3Sum(L,18))
print(fast3Sum(L,20))      
    
            
        
                
 
    
    
    
    
    
    
    
    
    
    
