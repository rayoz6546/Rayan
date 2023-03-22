# -*- coding: utf-8 -*-
"""
Created on Tue Mar 24 04:19:20 2020

@author: RAYAN
"""

file=open('grades.txt','w')
file.write("QUIZ_KEY T T F T F T T F F T\n")
file.write("23145666 T T F F F T T T F T\n")
file.write("84564445 T T F T F T T T F T\n")
file.write("87497322 T T F T F T T F F T\n")
file.write("45863111 F T F T T T T _ F T\n")
file.write("11223456 T F F T F T T F F T\n")
file.write("89437564 _ _ _ F F T T T F F\n")
file.write("45675476 T T F F F T F F _ _\n")
file.write("22353256 T _ F T F T T T T T\n")
file.write("54676001 T _ F T F F F F F T\n")
file.write("47000345 T T F T F T F F F T\n")
file.write("11676701 T _ F T F T T T T T\n")
file.write("22009345 T _ _ _ F F F F T T\n")
file.close()

# Part a 
def read_grades(file_Name):
    file=open('grades.txt','r')
    ListSubStrings=[]
    L=[]
    for line in file:
        ListSubStrings=line.split()
        L.append(ListSubStrings)
    file.close()
    return L
print(read_grades("grades.txt")

## Part b
#def compute_grades(L):
#    n1=len(L)
#    finalList=[]
#    for i in range(1,n1):
#           # List of key values of T and F (reference)
#          # List of student's answers
#        n2=len(L[i])
#        correctAnswer=0
#        wrongAnswer=0
#        points=0
#        subList=[]
#        for j in range(1,n2):
#            if L[i][j]==L[0][j]:      # so here we're comparing the answers of each
#                correctAnswer+=1         # student to the reference key values 
#                points+=10
#            elif L[i][j]!=L[0][j]:
#                if L[i][j]!='_':
#                    wrongAnswer+=1
#                    points-=10
#        subList.append(L[i][0])    # ID number of each student
#        subList.append(correctAnswer)    # number of correct answers for each student
#        subList.append(wrongAnswer)      # number of wrong answers for each student
#        subList.append(points)         # points/100 for each student
#        finalList.append(subList)      
#    return finalList
#
#L1=read_grades("grades.txt")
#L2=compute_grades(L1)
#
#print('Part a\n')
#print(L1)
#print('\nPart b\n')
#print(L2)
#
## Part c 
#print("\nPart c\n")
#file=open("student_scores.txt","w")
#file.write("The key answer is QUIZ_KEY  TTFTFTTFFT\n\n")
#summation=0        # will be used to add the grades (to calculate the average)
#numberOfStudents=0
#for i in range(len(L2)):
#    file.write("Student ID ")
#    # to enter subLists of L2 I'm using the notation L2[i][index]
#    file.write(str(L2[i][0]))    # ID number of each student
#    file.write(" answered ")
#    ListTrueFalse=L1[i+1]     # because we want to extract the answers of each student
#    List=[]    # this will become the list of answers (T or F) of each students
#    n=len(L1[i][0]) # the size of the subslists of L1 (any of them I chose the 1st (index 0))
#    for j in range(1,n):
#        x=ListTrueFalse[j]
#        List.append(x)
#    file.write(''.join(List))
#    file.write(" have ")
#    file.write(str(L2[i][1]))
#    file.write(" correct and ")
#    file.write(str(L2[i][2]))
#    file.write(" wrong answers, got ")
#    file.write(str(L2[i][3]))
#    file.write(" /100\n")
#    summation+=L2[i][3]
#    numberOfStudents+=1
#average=summation/numberOfStudents
#file.write('\nThe net average is: ')
#file.write(str(average))
#file.write("\nNumber of students is: ")
#file.write(str(numberOfStudents))
#
#    
#file.close()
#    
#file=open("student_scores.txt","r")
#print(file.read())
#file.close()
#
## Part d
#print("\nPart d")
#import matplotlib.pyplot as plt
#labels='80-90','50-70','less then 50','100'
#x1=0    # number of grades below 50
#x2=0    # number of grades between 50 and 70
#x3=0    # number of grades between 80 and 90
#x4=0    # number of grades equal to 100
#for i in range(len(L2)):
#    subList=L2[i]
#    if subList[3]<50:
#        x1+=1
#    elif subList[3]<70:
#        x2+=1
#    elif subList[3]<90:
#        x3+=1
#    else:
#        x4+=1
#values=[x3,x2,x1,x4]
#colors=['yellowgreen','lightcoral','lightskyblue','yellow']
#explode=(0,0,0,0.1)
#plt.title("Quiz Grades Distribution\n")
#plt.pie(values,explode=explode,labels=labels,colors=colors,autopct='%1.1f%%',shadow=True,startangle=170)
#plt.axis('equal')
#plt.show()
#        
    
    
        
    
    



            
                    
                    
                
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    