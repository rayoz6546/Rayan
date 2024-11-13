#Problem 4 Solution
##a) 
## binary search 
def binarySearch(L, x):
    n  = len(L)
    low = 0
    high = n-1
    while low<=high: 
        mid = (low+high)//2
        if L[mid] == x: 
            return mid
        elif L[mid]<x:
            low = mid+1
        else:
            high = mid-1
    return -1  


def sorted2Sum(L,t): #O(n*log(n))
    """ assumes L is sorted"""
    n = len(L)
    for i in range(n):
        if binarySearch(L,t-L[i])!=-1:
            return True
    return False

print("a) ")
L = [-6, 1, 3, 5, 7, 8, 9, 11]
print(sorted2Sum(L, 14)) # 7+7
print(sorted2Sum(L, 12)) # 1+11 
print(sorted2Sum(L, 15)) # 7+8
print(sorted2Sum(L, 3))  # -6+3
print(sorted2Sum(L, 0))  
print(sorted2Sum(L, 7))
print(sorted2Sum(L, 21))





#b) 
def linearSorted2Sum(L,t):  #O(n)
    """ assumes L is sorted"""
    n = len(L)
    i = 0
    j = n-1
    while i<= j: 
        if L[i]+L[j]==t: 
            return True
        elif L[i]+L[j]>t:  
            j-=1
        else: 
            i+=1
    return False 





print("b) ")
L = [-6, 1, 3, 5, 7, 8, 9, 11]
print(linearSorted2Sum(L, 14)) # 7+7
print(linearSorted2Sum(L, 12)) # 1+11 
print(linearSorted2Sum(L, 15)) # 7+8
print(linearSorted2Sum(L, 3))  # -6+3
print(linearSorted2Sum(L, 0))  
print(linearSorted2Sum(L, 7))
print(linearSorted2Sum(L, 21))



# c) 
## Insertion Sort : or you can use selection or bubble sort
def insertionSort(L):
    n = len(L)
    for j in range(1,n):
        # Insert L[j] into the sorted sequence  L[0∙∙∙j-1]
        key = L[j] # Save L[j] in key to avoid loosing it 
        i = j-1
        while  i>=0 and L[i] > key: 
                L[i+1] = L[i]  # move L[i] forward 
                i = i -1       # and go one step back
        L[i+1] = key

        
def fast3Sum(L,t):  #Total: O(n^2)
    insertionSort(L)  #  O(n^2)
    n = len(L)
    # loop takes O(n^2):
    for i  in range(n):   
        if linearSorted2Sum(L,t-L[i]):  #  O(n)
            return True
    return False 


print("c) ")
L = [-6, 1, 3, 5, 7, 9, 11]    
print(fast3Sum(L,2))  # e.g., -6+1+7 
print(fast3Sum(L,5))  # e.g., 1+1+3
print(fast3Sum(L,7))  # e.g., 1+1+5
print(fast3Sum(L,15)) # e.g., 1+3+11
print(fast3Sum(L,19)) # e.g., 3+7+9  
print(fast3Sum(L,0))   # e.g., -6+1+5  
print(fast3Sum(L,1)) 
print(fast3Sum(L,18))
print(fast3Sum(L,20)) 
print(fast3Sum(L,28))

#    
#                
#        
    
