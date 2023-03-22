# -*- coding: utf-8 -*-
"""
Created on Sat Mar 14 04:48:07 2020

@author: RAYAN
"""

file=open("plot.txt","w")
file.write("2 3\n3 4\n4 5")
file.close()
file=open("plot.txt","r")
print(file.read())
file.close()
import matplotlib.pyplot as plt
file=open("plot.txt","r")
X=[]
Y=[]
for line in file:
    L=line.split()
    if len(L)==2:
        X.append(float(L[0]))
        Y.append(float(L[1]))
file.close()
plt.plot(X,Y,'k')

