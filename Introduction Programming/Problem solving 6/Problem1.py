# -*- coding: utf-8 -*-
"""
Created on Wed Mar 11 14:58:48 2020

@author: RAYAN
"""

dollarFile=open("dollar.txt","w")
dollarFile.write("Data about dollar fluctuation"+'\n')
dollarFile.write("nov1, 1515"+'\n'+"nov15, 1515"+'\n'+"dec1, 1600"+'\n'+"dec15, 1800"+'\n')
dollarFile.write("jan1, 2000"+'\n'+"jan15, 2200"+'\n'+"feb1,2400"+'\n'+"feb15, 2500"+'\n'+"mar1, 2000")
dollarFile.close()

def readData(fileName):
    file=open(fileName,"r")
    s=file.readline()
    print(s)
    L=[]
    for line in file:
        L.append(line.strip().split(','))
    file.close()
    return L
L=(readData("dollar.txt"))
print(L)
n=len(L)
first=[]
second=[]
for i in range(n):
    first.append(str(i+1)+':'+L[i][0])
    second.append(int(L[i][1]))
    
MaxY=max(second)
MaxX=[x for x in range(n) if second[x]==MaxY]
print(MaxY,MaxX[0])
print('\nList of ranges:',first)
print('\nList of values:',second)
import matplotlib.pyplot as plt
plt.plot(first,second)    
plt.title("USD versus LBP in Black Market")
plt.grid(axis='both')
plt.ylim(1400,3000)
plt.plot([MaxX[0],MaxY[0]],[1500 ,MaxY])
