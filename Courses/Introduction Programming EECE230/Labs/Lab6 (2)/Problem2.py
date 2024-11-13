# -*- coding: utf-8 -*-
"""
Created on Tue Mar 10 00:08:56 2020

@author: RAYAN
"""
# part a
file=open("lebanon.txt","w")
file.write("Welcome to Lebanon\nOne of the\nGreatest country on earth\n")
file.close()

def isWordInFile(fileName,word):
    file=open(fileName,"r")
    text=file.read()
    s=text.split()
    if word in s:
        wordIsFound=True
    else:
        wordIsFound=False  
    file.close()
    return wordIsFound
print(isWordInFile("lebanon.txt","Greatest"))
print(isWordInFile("lebanon.txt","Great"))

# part b 
def wordSearch(fileName,word):
    b=isWordInFile(fileName,word)
    if b==True:
        file=open(fileName,"r")
        i=1
        for line in file:
            if word in line:
                line_number=i
                break
            i+=1
        file.close()
    else:
        line_number=0
    return line_number
print(wordSearch("lebanon.txt","Greatest"))
print(wordSearch("lebanon.txt","Great"))

# part c
def duplicateLines(fileName):
    assert fileName[-4:]==".txt","Extension of file is not '.txt'"
    file=open(fileName,"r")
    newFile=open("testDuplicated.txt","w")
    for line in file:
        newFile.write(line)
        newFile.write(line)
       
    
    newFile.close()
    file.close()
    newFile=open("testDuplicated.txt","r")
    print(newFile.read())
    newFile.close()
    return

duplicateLines("lebanon.txt")

# part d
fileData=open("data.txt","w")              # 1 step
fileData.write("I am in the lab working.\n")   # 1 step
fileData.write("It is so nice to work on math and programming.\n") # 1 step 
fileData.write("EECE230 is the most important course you have to learn.\n")  # 1 step 
fileData.write("If you have questions, ask your lab instructor.\n")  # 1 step
fileData.write("I won $2000 for this GOOD TASK.\n")    # 1 step
fileData.write("Keep working for your benefit.")   # 1 step
fileData.close()    # 1 step
L1=[]    # 1 step
for i in range(32,128):  # 96 steps
    L1.append(chr(i))    # 1 step every time
n=len(L1)            # 1 step
fileData=open("data.txt","r")   # 1 step
L2=[]         # 1 step
for line in fileData:     # n steps 
    for j in line:           # n steps
        for a in range(95):     # 95 steps
            char=chr(a+32)        # 1 step every time 
            if char==j:      # 1 step every time
                L2[a]+=1    # 1 step every time
                break      # 1 step
print(L1)   # 1 step 
print(L2)     # 1 step 
print('Character Counts in File data.txt')   # 1 step 
for i in range(95):  # 95 steps
    if L2[i]!=0:    # 1 step every time
        print(L1[i],':',L2[i])   # 1 step every time
    
# worst case: T(n) --> bigtheta(n^2)
# best case T(0)-->bigtheta(1)
        
# Please note that in all of the above, i forgot to count the step where we break
# the loop (in all the for loops), meaning the last step where the condition
# "in range()" is not satisfied. But this doesn't change the results.


    
    
    