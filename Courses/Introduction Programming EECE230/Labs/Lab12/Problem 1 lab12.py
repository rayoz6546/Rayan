# -*- coding: utf-8 -*-
"""
Created on Thu Apr 23 15:13:23 2020

@author: RAYAN
"""

# Part a
def genBinStr2(n,w):
    if n<0 or w<0 or w>n:
        return []
    elif n==w:       
        return ["1"*n]   
    else:
        a=genBinStr2(n-1,w)       # In "a" we decrement n so that we reach n=w 
                                  # and determine how many 1's do we want 
        b=genBinStr2(n-1,w-1)
    L=[]
    for i in a:        
        L.append('0'+i)      # and here in the loops we complete so that we get all the
                                # combinations of 0's and 1's. 
    for j in b:
        L.append('1'+j)
    return L
print("Part a:")
print(genBinStr2(3,0))
print(genBinStr2(3,1))
print(genBinStr2(3,2))
print(genBinStr2(3,3))
print(genBinStr2(4,2))
print(genBinStr2(6,1))
print(genBinStr2(3,5))

# Part b     
def genBinStr2Memoized(n,w):
    def genBinStr2(n,w):
        List=[]
        if n<0 or w<0 or w>n:
            return List
        elif n==w:
            return ["1"*n]
        
        if (n-1,w) not in D1:
            A=genBinStr2(n-1,w)
            D1[(n-1,w)]=A
            for k in A:
                List.append("0"+k)
        else:
            List.append("0"+str(D1[n-1,w][0]))
      
            
        if (n-1,w-1) not in D2:
            if w>0:
                B=genBinStr2(n-1,w-1)
                D2[(n-1,w-1)]=B
                for k in B:
                    List.append("1"+k) 
        else:
            List.append("1"+str(D2[n-1,w-1][0]))
        
        return List
    D1={}
    D2={}
    return genBinStr2(n,w)

print("\nPart b:")
print(genBinStr2Memoized(3,0))
print(genBinStr2Memoized(3,1))
print(genBinStr2Memoized(3,2))
print(genBinStr2Memoized(3,3))
print(genBinStr2Memoized(4,2))
print(genBinStr2Memoized(6,1))
print(genBinStr2Memoized(3,5))    
        