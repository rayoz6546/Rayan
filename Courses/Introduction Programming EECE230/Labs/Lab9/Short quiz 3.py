# -*- coding: utf-8 -*-
"""
Created on Wed Apr  8 14:02:40 2020

@author: RAYAN
"""

# " I, Rayan Hassan, promise to conduct the in-lab quiz on my own without external help"



# Part a 

def readList(fileName):
    file=open(fileName,"r")
    List=[]
    L=[]
    for line in file:
        List=line.split()
        L.append(List[3])
    file.close()
    print("The file contains the following plates:")
    return print(L)
readList("plates.txt")

# Part b 
N=0
def recursiveCountN(L,low,high):
    global N
    while low<high:
        a=high-low
        if a==1:
            if L[a]%2==0:      # So if even
                return N
            else:
                N+=1            # if even, increment N
                return N
        else:
            recursiveCountN(L,low,high-1)
            
# Part c 
List=readList("plates.txt")
A=recursiveCountN(List,0,len(List)-1)
print(A)


 



