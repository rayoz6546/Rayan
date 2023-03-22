# -*- coding: utf-8 -*-
"""
Created on Sun Mar 15 04:12:57 2020

@author: RAYAN
"""

import matplotlib.pyplot as plt
import math

# Part a 
plt.subplot(3,2,1)
X1=[]
Y1=[]
for i in range(2,30):
    X1.append(i)
    Y1.append(math.log2(i))
plt.plot(X1,Y1,'r')
plt.xlabel('n')
plt.ylabel('log_2(n)')
plt.title('Logarithmic Growth')

plt.subplot(3,2,2)
X2=[]
Y2=[]
for i in range(2,30):
    X2.append(i)
    Y2.append(i)
plt.plot(X2,Y2,'g')
plt.xlabel('n')
plt.ylabel('n')
plt.title('Linear Growth')

plt.subplot(3,2,3)
X3=[]
Y3=[]
for i in range(2,30):
    X3.append(i)
    Y3.append(i*(math.log2(i)))
plt.plot(X3,Y3,'b')
plt.xlabel('n')
plt.ylabel('n*log_2(n)')
plt.title('Loglinear Growth')

plt.subplot(3,2,4)
X4=[]
Y4=[]
for i in range(2,30):
    X4.append(i)
    Y4.append(i**2)
plt.plot(X4,Y4,'k')
plt.xlabel('n')
plt.ylabel('n^2')
plt.title('Quadratic Growth')

plt.subplot(3,2,5)
X5=[]
Y5=[]
for i in range(2,30):
    X5.append(i)
    Y5.append(2**i)
plt.plot(X5,Y5,'y')
plt.xlabel('n')
plt.ylabel('2^n')
plt.title('Exponential Growth')

# Part b
X1=[]
Y1=[]
for i in range(2,30):
    X1.append(i)
    Y1.append(math.log2(i))
plt.plot(X1,Y1,'r',label='log_2(n)')

X2=[]
Y2=[]
for i in range(2,30):
    X2.append(i)
    Y2.append(i)
plt.plot(X2,Y2,'g',label='n')

X3=[]
Y3=[]
for i in range(2,30):
    X3.append(i)
    Y3.append(i*(math.log2(i)))
plt.plot(X3,Y3,'b',label='n*log_2(n)')

X4=[]
Y4=[]
for i in range(2,30):
    X4.append(i)
    Y4.append(i**2)
plt.plot(X4,Y4,'k',label='n^2')

X5=[]
Y5=[]
for i in range(2,30):
    X5.append(i)
    Y5.append(2**i)
plt.plot(X5,Y5,'y',label='2^n')

plt.xlabel('n')
plt.legend()
plt.title('All on the same figure')
plt.yscale('log')

# Part c 
plt.subplot(1,2,1)
X1=[]
Y1=[]
for i in range(2,30):
    X1.append(i)
    Y1.append(math.log2(i))
plt.plot(X1,Y1,'r',label='log_2(n)')

X2=[]
Y2=[]
for i in range(2,30):
    X2.append(i)
    Y2.append(i)
plt.plot(X2,Y2,'g',label='n')

X3=[]
Y3=[]
for i in range(2,30):
    X3.append(i)
    Y3.append(i*(math.log2(i)))
plt.plot(X3,Y3,'b',label='n*log_2(n)')
plt.yscale('log')
plt.title('log_2(n) vs. n vs. n*log_2(n)')
plt.legend()
plt.subplot(1,2,2)

X3=[]
Y3=[]
for i in range(2,30):
    X3.append(i)
    Y3.append(i*(math.log2(i)))
plt.plot(X3,Y3,'b',label='n*log_2(n)')

X4=[]
Y4=[]
for i in range(2,30):
    X4.append(i)
    Y4.append(i**2)
plt.plot(X4,Y4,'k',label='n^2')

X5=[]
Y5=[]
for i in range(2,30):
    X5.append(i)
    Y5.append(2**i)
plt.plot(X5,Y5,'y',label='2^n')
plt.title('n*log_2(n) vs. n^2 vs. 2^n')
plt.legend()
plt.yscale('log')