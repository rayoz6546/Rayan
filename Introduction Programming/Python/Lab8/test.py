# -*- coding: utf-8 -*-
"""
Created on Fri Apr  3 09:59:23 2020

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


def read_grades(file_Name):
    file=open(file_Name,'r')
    ListSubStrings=[]
    L=[]
    for line in file:
        ListSubStrings=line.split()
        L.append(ListSubStrings)
    file.close()
    return L
print(read_grades("grades.txt"))

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

