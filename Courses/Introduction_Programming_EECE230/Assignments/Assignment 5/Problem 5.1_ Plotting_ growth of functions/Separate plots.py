#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 15:30:57 2019

@author: ahmadbeydoun
"""

import matplotlib.pyplot as plt
from math import log
n=30
X=[x for x in range(n-1)]
plt.figure(1)
plt.clf()
plt.subplot(3,2,1)
plt.plot(X,[log(i,2) for i in range(2,n+1)],"r")
plt.xlabel("n")
plt.ylabel("log_2(n)")
plt.title("Logarithmic Growth")
plt.subplot(3,2,2)
plt.plot(X,[i for i in range(2,n+1)],"g")
plt.xlabel("n")
plt.ylabel("n")
plt.title("Linear Growth")
plt.subplot(3,2,3)
plt.plot(X,[i*log(i,2) for i in range(2,n+1)],"b")
plt.xlabel("n")
plt.ylabel("n*log_2(n)")
plt.title("Loglinear Growth")
plt.subplot(3,2,4)
plt.plot(X,[i**2 for i in range(2,n+1)],"k")
plt.xlabel("n")
plt.ylabel("n^2")
plt.title("Quadratic Growth")
plt.subplot(3,2,5)
plt.plot(X,[2**i for i in range(2,n+1)],"y")
plt.xlabel("n")
plt.ylabel("2^n")
plt.title("Exponential Growth")
plt.show()