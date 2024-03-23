#LAB 7 
# PROBLEM 2 Solution

##PART A

from numpy.random import randint

def ranGen(N):
    L=[]
    nameHandle = open("numbers.txt","w")
    x=0
    while N>x:
        x=randint(1000)
        nameHandle.write(str(x)+ ' ')
        L.append(x)
    nameHandle.close()
    return L

L = ranGen(975)
print(L)
######################### PART B ####################################

def statList(L):
    one=0
    ONE=0   #for sums
    two=0
    TWO=0
    three=0
    THREE =0

    for x in L:
        if x<10:
            one+=1
            ONE+=x
            
        elif x<100:
            two += 1
            TWO+=x
            
        else:
            three += 1
            THREE+=x
            
    nameHandle2= open('statistics.txt', 'w')
    nameHandle2.write('\tStatistics\t\tCount\t\tAverage')
    print('\n\tStatistics\t\tCount\t\tAverage')
    if one != 0 :
        nameHandle2.write('\n\tone digit:\t\t' + str(one) + '\t\t' + str(round(ONE/one,2)))
        print('\n\tone digit:\t\t',one,'\t\t',round(ONE/one,2))
    else:
        nameHandle2.write('\n\tone digit:\t\t0\t\t0')
        print('\n\tone digit:\t\t0\t\t0')
    
    if two != 0 : 
        nameHandle2.write('\n\ttwo digits:\t\t' + str(two) + '\t\t' + str(round(TWO/two,2)))
        print('\n\ttwo digits:\t\t',two,'\t\t',round(TWO/two,2))
    else:
        nameHandle2.write('\n\ttwo digits:\t\t0\t\t0')
        print('\n\ttwo digits:\t\t0\t\t0')
    
    #in our case with N=975, three can never be equal to 0, but if we took N = 80 maybe it will
    nameHandle2.write('\n\tthree digits:\t\t' + str(three) + '\t\t' + str(round(THREE/three,2)))
    print('\n\tthree digits:\t\t',three,'\t\t',round(THREE/three,2))
    nameHandle2.close()
    

    
    return [ONE,TWO,THREE]
    

percent=statList(L)

######################### PART C ####################################

import matplotlib.pyplot as plt

plt.bar(['1 digit','2 digits','3 digits'], percent, align ='center', alpha=0.5 )
plt.ylabel('Number of Digits')
plt.title('1,2,3 digits Counts')
    