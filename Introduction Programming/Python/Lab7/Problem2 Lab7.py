# -*- coding: utf-8 -*-
"""
Created on Sun Mar 15 07:09:05 2020

@author: RAYAN
"""

# Part a
def randGen(N):
    import numpy.random as rand
    L=[]
    for i in range(1000):
        x=rand.randint(1000)
        if x<=N:
            L.append(x)
        else:
            L.append(x)
            break
    return L

#print("Generated numbers:",randGen(975))
    
# Part b 
def statList(L):
    oneDigit=0
    twoDigit=0
    threeDigit=0
    summation1=0
    summation2=0
    summation3=0
    for i in range(len(L)):
        if (L[i]//10)==0:
            oneDigit+=1
            summation1+=L[i]
        elif (L[i]//100)==0:
            twoDigit+=1
            summation2+=L[i]
        elif (L[i]//1000)==0:
            threeDigit+=1
            summation3+=L[i]
    if oneDigit!=0:
        average1=summation1/oneDigit
    else:
        average1=0
    if twoDigit!=0:
        average2=summation2/twoDigit
    else:
        average2=0
    if threeDigit!=0:
        average3=summation3/threeDigit
    else:
        average3=0
    file=open("statistics.txt","w")
    file.write("Statistics\tCount\tAverage\n")
    file.write("one digit:\t")
    file.write(str(oneDigit))
    file.write('\t')
    file.write(str(average1))
    file.write('\n')
    file.write('two digits:\t')
    file.write(str(twoDigit))
    file.write('\t')
    file.write(str(average2))
    file.write('\n')
    file.write('three digits:\t')
    file.write(str(threeDigit))
    file.write('\t')
    file.write(str(average3))
    file.close()
    file=open("statistics.txt","r")
    print(file.read())
    file.close()
    return [oneDigit,twoDigit,threeDigit]
L=randGen(975)
print(L)
Count=statList(L)

# Part c
import matplotlib.pyplot as plt
X=['1 digit','2 digits','3 digits']

Y=[Count[0],Count[1],Count[2]]
plt.ylabel('Number of Digits')
plt.title('1,2,3 Digits Counts')
plt.ylim(0,100)
plt.bar(X,Y)





      
