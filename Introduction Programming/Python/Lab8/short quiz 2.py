# -*- coding: utf-8 -*-
"""
Created on Fri Apr  3 12:34:45 2020

@author: RAYAN
"""

# "I, Rayan Hassan, promise to conduct the in-lab quiz on my own without external help."

file=open("courses.txt","w")
file.write("Number of students: 5\n")
file.write("Number of courses: 3\n")
file.write("Student_ID  Course 1 Course 2 Course 3\n")
file.write("1:            85       90       67\n")
file.write("2:            75       65       86 \n")
file.write("3:            97       93       94\n")
file.write("4:            78       82       81\n")
file.write("5:            57       65       75")
# Part a 
def read_grades(file_Name):
    file=open("courses.txt","r")
    x=file.readline()
    L1=x.split()
    y=file.readline()
    L2=y.split()
    print("You have",L1[3],"Students and",L2[3],"Courses")
    ListSubStrings=[]
    L=[]
    for line in file:
        s=file.readline()
        ListSubStrings=s.split()
        L.append(ListSubStrings)
    file.close()
    return print(L)
    
read_grades("courses.txt")

# Part b

def compute_stdt_grades(L):
    file1=open("stdt_scores.txt","w")
    for i in range(len(L)):
        summation=0
        average=0
        L=[]
        for j in range(1,len(L[i])):
            summation+=L[i][j]
            average=summation/3
            L.append("Student",L[i][0])
            L.append(average)
            file1.write(L)
            file1.write('\n')
        file1.close()
    return 
L=read_grades("courses.txt")
compute_stdt_grades(L)

# SIR I THOUGHT WE SHOULD SUBMIT AT 2H30 BUT THEN I SAW THAT WE HAD TILL 2H40
# THATS WHY I SUBMITTED THIS FILE NOW. SORRY
        
    







