#Lab6_2 Solution
##Part A
#def isWordInFile (fileName, n):
#    nameHandle = open(fileName,"r")
#    s = nameHandle.read()
#    n = n + " " 
#    nameHandle.close()
#    if n in s:
#        return True
#    else:
#        return False
#    
#print(isWordInFile("lebanon.txt", "Greatest"))
#print(isWordInFile("lebanon.txt", "Great"))


##Part B
#def wordSearch(fileName, word):
#    i = 1
#    j=0
#    N = open(fileName, "r")
#    word = word + " "
#    for line in N: 
#        if word in line:
#            j = i
#        i +=1
#    N.close()
#    return j
#
#print (wordSearch("lebanon.txt", "Welcome"))
#print (wordSearch("lebanon.txt", "Greatest"))
#print (wordSearch("lebanon.txt", "Great"))

#Part C

#def duplicateLines(fileName):
#    
#    L = fileName.split(".")
#    assert L[1]=="txt", "The extension is not .txt"
#    
#    N = open(fileName,"r")
#    P = open("Duplicated.txt", "a")
#    
#    for line in N:
#        P.write(line*2)
#        
#    N.close()
#    P.close()
#
#
#    
#duplicateLines("lebanon.txt")
#duplicateLines("lebanon.lol")

#Part D

L1=[chr(ch) for ch in range(32,127)]
L2=[0 for ch in range(32,127)]
print(L1)
print(L2)
nameHandle = open('data.txt', 'r')
#
#
#i = 1
for line in nameHandle:
    for ch in line:
        for c in range(95):
            char=chr(c+32)
            if char==ch:
                L2[c]+=1
                break
        
print(L2)
    
    
print('Character Counts in File data.txt')
for i in range(95):
    if L2[i]!=0:
        print(L1[i],':',L2[i])

