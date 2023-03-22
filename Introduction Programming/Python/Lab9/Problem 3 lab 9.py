# -*- coding: utf-8 -*-
"""
Created on Fri Apr  3 19:27:13 2020

@author: RAYAN
"""
# Part a
def recursiveModeFinder(L,low,high):
    n=len(L)
    if n==1:
        return 0
    else:
        middle=(low+high)//2
        while low<high:
            if L[middle-1]<L[middle] and L[middle+1]<L[middle]:
                return middle
            elif L[middle-1]>L[middle]:
                high=middle-1
                return recursiveModeFinder(L,low,high)
            else:
                low=middle+1
                return recursiveModeFinder(L,low,high)
    if L[0]<L[1]:
        return n-1
    else:
        return 0
L = [1,2,4,7,11,10,8,4,-9]
print("For L=",L,"mode is",recursiveModeFinder(L,0,len(L)-1))
L = [1,2,5,20]
print("For L=",L,"mode is",recursiveModeFinder(L,0,len(L)-1))
L =[20,5,2,1]
print("For L=",L,"mode is",recursiveModeFinder(L,0,len(L)-1))
L = [1]
print("For L=",L,"mode is",recursiveModeFinder(L,0,len(L)-1))

# Part b
def fastIterativeModeFinder(L):
    if len(L)==1:
        return 0
    else:
        n=len(L)
        low=0
        high=n-1
        middle=(low+high)//2
        while low<high:
            if L[middle-1]<L[middle] and L[middle]>L[middle+1]:
                return middle
            elif L[middle-1]>L[middle]:
                high=middle-1
                middle=(low+high)//2
            else:
                low=middle+1
                middle=(low+high)//2
        if L[0]<L[1]:
            return n-1
        else:
            return 0
L = [1,2,4,7,11,10,8,4,-9]
print("For L=",L,"mode is",fastIterativeModeFinder(L))
L = [1,2,5,20]
print("For L=",L,"mode is",fastIterativeModeFinder(L))
L =[20,5,2,1]
print("For L=",L,"mode is",fastIterativeModeFinder(L))
L = [1]
print("For L=",L,"mode is",fastIterativeModeFinder(L))