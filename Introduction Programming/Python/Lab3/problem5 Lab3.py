# -*- coding: utf-8 -*-
"""
Created on Wed Feb 12 16:15:38 2020

@author: rbh13
"""
#PART A

n=int(input("Input number to check if prime:"))
i=2
prime=True
while i<n:
    if n%i==0:
        prime=False 
        break 
    i+=1
if prime==True:
    print(n,"is prime")
else:
    print(n,"is NOT prime")    
    
#PART B
    
n=int(input("Input number to check if prime:"))
i=2
prime=True
while i<=n**(0.5):
    if n%i==0:
        prime=False 
        break 
    i+=1
if prime==True:
    print(n,"is prime")
else:
    print(n,"is NOT prime")    

#PART C

n=int(input("Input number to find density of primes till it:"))
Sum=0
for i in range(2,n+1):
    prime=True
    j=2
    while j<=i**(0.5):
        if i%j==0:
            prime=False
            break
        j+=1
    if prime==True:
        Sum+=1
density=Sum/n
print("Density of primes up to",n,"is",density)

       

    