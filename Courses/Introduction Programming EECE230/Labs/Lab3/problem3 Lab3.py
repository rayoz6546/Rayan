# -*- coding: utf-8 -*-
"""
Created on Wed Feb 12 14:34:06 2020

@author: rbh13
"""

n=int(input("Input the number of grades:"))
i=0
Sum=0
while i<n:
    x=int(input("Input grade:"))
    if x>=40:
        if x<60:
            Sum+=0.0
            print("F --> 0.0")
        elif x==60:
            Sum+=1.0
            print("D --> 1.0")
        elif x==61 or x==62:
            Sum+=1.3
            print("D+ --> 1.3")
        elif x<=65:
            Sum+=1.7
            print("C- --> 1.7")
        elif x<=68:
            Sum+=2.0
            print("C --> 2.0")
        elif x<=71:
            Sum+=2.3
            print("C+ --> 2.3")
        elif x<=74:
            Sum+=2.7
            print("B- --> 2.7")
        elif x<=78:
            Sum+=3.0
            print("B --> 3.0")
        elif x<=82:
            Sum+=3.3
            print("B+ --> 3.3")
        elif x<=86:
            Sum+=3.7
            print("A- --> 3.7")
        elif x<=92:
            Sum+=4.0
            print("A --> 4.0")
        elif x<=100:
            Sum+=4.3
            print("A+ --> 4.3")  
        else:
            print("Invalid grade")
            i-=1
        i+=1            
    elif x>=100:
        print("Invalid grade")
        i-=1
final=Sum/n
print("The student's GPA is",round(final,2))
       

 

