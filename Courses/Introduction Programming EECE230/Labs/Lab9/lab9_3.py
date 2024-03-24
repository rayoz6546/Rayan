
## PROBLEM 3

############################  PART A  ##################################

def recursiveModeFinder(L,low,high): 
    ''' Assume L is unimodal'''
    mid = (low + high)//2 
    if (mid+1 == len(L) or L[mid+1]<L[mid])  and (mid - 1 < 0 or L[mid-1]<L[mid]):
        return mid 
   
    if L[mid+1]>L[mid]:
        return recursiveModeFinder(L,mid+1, high)
    
    elif L[mid-1]>L[mid]:
        return recursiveModeFinder(L,low, mid-1)

print("Testing Recursive mode finder:")  
L=[1,2,4,7,11,10,8,4,-9] 
print(recursiveModeFinder(L,0,len(L)-1))

L = [1,2,5,20]
print(recursiveModeFinder(L,0,len(L)-1))

L=[20,5,2,1]
print(recursiveModeFinder(L,0,len(L)-1))

L=[1]
print(recursiveModeFinder(L,0,len(L)-1))

L=[1,2,3,4,5,6,7,4,3,2,1]
print(recursiveModeFinder(L,0,len(L)-1))
############################  PART B  ##################################

def fastIteraritveModeFinder(L):
    low = 0
    high = len(L)-1
    mid = (low+high)//2
    while low<high :
        if (mid+1 == len(L) or L[mid+1]<L[mid])  and (mid - 1 < 0 or L[mid-1]<L[mid]):
            return mid 
        elif L[mid+1]>L[mid]:
            low = mid+1
        elif L[mid]>L[mid+1]:
            high=mid
        mid = (low+high)//2
    return mid 

print("\nTesting Iterative mode finder:") 
L=[1,2,4,7,11,10,8,4,-9] 
print(fastIteraritveModeFinder(L))

L = [1,2,5,20]
print(fastIteraritveModeFinder(L))

L=[20,5,2,1]
print(fastIteraritveModeFinder(L))

L[1]
print(fastIteraritveModeFinder(L))

L=[1,2,3,4,5,6,7,4,3,2,1]
print(fastIteraritveModeFinder(L))