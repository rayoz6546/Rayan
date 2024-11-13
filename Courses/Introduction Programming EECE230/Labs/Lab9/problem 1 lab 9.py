# -*- coding: utf-8 -*-
"""
Created on Fri Apr  3 15:35:21 2020

@author: RAYAN
"""

# Part a
def f(n):
    global N
    N=N+1
    if n<=2:
        return 1
    else:
        return f(n-1)+f(n-2)+f(n-3)+f(n//3)

    
print("f(n) for n=0...9")
for i in range(10):
    N=0
    print(f(i),end=' ')
N=0
print("\nf(25):",f(25))
print("Number of recursive calls for 25:",N)


# Part b
def fIterative(n):
    if n<=2:
        return 1 
    else:
        L=[1,1,1]
        for i in range(3,n+1):
            x=L[i-3]+L[i-2]+L[i-1]+L[i//3]
            L.append(x)
    return L[n]
print("f(n) for n = 0...9:")
for i in range(10):
    print(fIterative(i), end=" ")
print("\nf(25):", fIterative(25))

