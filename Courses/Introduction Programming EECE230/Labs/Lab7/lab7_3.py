#Problem 3 Solution
def generatePrimes(n):
    B = [True]*n
    B[0] = False
    B[1] = False
    P = []
    for i in range(2,n):
        if B[i]:
            P.append(i)
            j = 2*i
            while j<n:
                B[j] = False
                j = j+i
    return (P,B) 

#Part (a)
(P,B)=generatePrimes(2)    
print(P)
(P,B)=generatePrimes(10)    
print(P)
(P,B)=generatePrimes(20)    
print(P)
(P,b)=generatePrimes(100)    
print(P)

#Part (b):
def primesCount(n):
    (P,B) = generatePrimes(n)
    y = [0 for i in range(n)]
    for i in range(2,n): 
        if B[i]:
            y[i]=y[i-1]+1
        else:
            y[i] = y[i-1]
    return y
    
print(primesCount(5))
print(primesCount(10))
#You can see the same initially
print(primesCount(20))

        
#Part (c) 
import matplotlib.pyplot as plt
from math import log 
n = 200;
x = [i for i in range(n)]
y = primesCount(n) 
yRef = [i/log(i) for i in range(2,n)]
plt.plot(x,y,'r',label='pi(i)')
plt.plot(x[2:],yRef,'k',label='i/log(i)')
plt.xlabel("i")
plt.legend()
plt.title('Density of primes')