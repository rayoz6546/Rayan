#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 15:48:26 2019

@author: ahmadbeydoun
"""

import matplotlib.pyplot as plt
from math import log
n=30
X=[x for x in range(n-1)]
plt.figure(1)
plt.clf()
plt.subplot(1,2,1)
plt.plot(X,[log(i,2) for i in range(2,n+1)],"r",label="log_2(n)")
plt.plot(X,[i for i in range(2,n+1)],"g",label="n")
plt.plot(X,[i*log(i,2) for i in range(2,n+1)],"b",label="n*log_2(n)")
plt.xlabel("n")
plt.yscale("log")
plt.legend()
plt.subplot(1,2,2)
plt.plot(X,[i*log(i,2) for i in range(2,n+1)],"b",label="n*log_2(n)")
plt.plot(X,[i**2 for i in range(2,n+1)],"k",label="n^2")
plt.plot(X,[2**i for i in range(2,n+1)],"y",label="2^n")
plt.xlabel("n")
plt.yscale("log")
plt.legend()
plt.show()