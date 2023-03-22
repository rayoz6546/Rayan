# -*- coding: utf-8 -*-
"""
Created on Wed Mar 11 14:05:46 2020

@author: RAYAN
"""
# part a 
grid=open("grid.txt","w")
grid.write("9 9")
grid.write('\n')
grid.write("mvjlixapejhbceenpphunohbswyrwamnuyzhppfprdzkqtpnuqoyjyanhtpfgbghxmehwylyuarraysoa")
grid.close()


def create_grid(fileName):
    grid=open(fileName,"r")
    firstLine=grid.readlines()[0]
    L1=firstLine.split()
    rows=L1[0]
    columns=L1[1]
    grid.close()
    grid=open(fileName,"r")
    secondLine=grid.readlines()[1]
    L2=secondLine.split()
    st1=''.join(L2)
    array=open("array.txt","w")
    for i in range(int(rows)):
        st2=st1[:int(columns)]
        array.write(st2)
        array.write('\n')
        st1=st1[int(columns):]
    array.close()
    grid.close()
    return 
create_grid("grid.txt")
# part b
def puzzleSearch(fileName,word):
    create_grid(fileName)
    array=open("array.txt","r")
    w=word
    n=len(w)
    i=1
    for line in array:
        for i in range(n):
            if line.find(w[i])!=-1:
                column_number=line.find(w[i])
                row_number=i
                for j in range(i):
                    if line.find(w[i+1])!=-1:
                        direction="right"
                break
        i+=1
    return print(row_number)
puzzleSearch("grid.txt","computer")

# I couldn't finish part b in time 
                
            
    
    

        
    
    
    
    
    
    
    
    
    
    
    