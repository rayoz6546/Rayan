# -*- coding: utf-8 -*-
"""
Created on Fri Apr 10 12:18:59 2020

@author: RAYAN
"""

# Part a 
def read_grades(fileName):
    file=open(fileName,"r")
    x=file.readline()
    x.split(':')
    y=file.readline()
    y.split(':')
    z=file.readline()         # read it and do nothing
    L=[]
    for line in file:
        subL=[]
        subL=line.split()
        L.append(subL)
    file.close()
    return L
        
 

# Part b

def compute_stdts_grade(L):
    finalList=[]
    L1=[]
    L2=[]
    L3=[]
    summation1=0
    summation2=0
    summation3=0
    for i in range(len(L)):
        summation1+=int(L[i][1])   # summation of grades of course1 
        summation2+=int(L[i][2])   # summation of grades of course2 
        summation3+=int(L[i][3])      # summation of grades of course3
    n=len(L)     #number of students
    average1=summation1/n
    average2=summation2/n
    average3=summation3/n
    L1=["Course 1",average1]
    L2=["Course 2",average2]
    L3=["Course 3",average3]
    finalList.append(L1)
    finalList.append(L2)
    finalList.append(L3)
    
    return finalList 

# Part c 
l1=read_grades("courses.txt")
n=len(l1)   # number of students
c=len(l1[0])-1  # number of courses
print("Part A")
print("You have",n,"Students and",c,"Courses")
print(l1)
print("Part B")
l2=compute_stdts_grade(l1)
print(l2)

file_score=open("course_score.txt","w")
file_score.write("Courses' Averages\n")
for i in range(len(l2)):
    file_score.write(str(l2[i][0])+':'+str(l2[i][1])+'\n')
file_score.close()


    

        
        
        
        

     
    

    
        
        
        
        

