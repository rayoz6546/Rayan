##Lab 8 Solution #3
def binarySearchFirstOccurrence(L, x):
    n  = len(L)
    low = 0
    high = n-1
    while low<=high: 
        mid = (low+high)//2
        if L[mid] < x: 
            low = mid+1
        elif L[mid]==x and (mid==0 or L[mid]!=L[mid-1]):
            return mid
        else:
            high = mid-1
    return -1         

print("---------------------")            
print("binarySearchFirstOccurrence:")
print(binarySearchFirstOccurrence([], 3))
print(binarySearchFirstOccurrence([5], 3))
print(binarySearchFirstOccurrence([5], 5))
print(binarySearchFirstOccurrence([3,5,5,5], 5))
print(binarySearchFirstOccurrence([3,5,5,5,5], 1))
print(binarySearchFirstOccurrence([3,5,5,5,5], 2))
print(binarySearchFirstOccurrence([3,5,7,7,7,15,26,30,33], 7))
print(binarySearchFirstOccurrence([3,5,7,7,7,15,26,30,33], 33))
print(binarySearchFirstOccurrence([3,5,7,7,7,15,26,30,33], 12))
print(binarySearchFirstOccurrence([3,3,5,7,15,26,30,33], 26))  
print(binarySearchFirstOccurrence([3,3,3,3,3,3,3,3,3,3], 3))  

#############################################
def binarySearchLastOccurrence(L, x):
    n  = len(L)
    low = 0
    high = n-1
    while low<=high: 
        mid = (low+high)//2
        if L[mid] > x: 
            high = mid-1
        elif L[mid]==x and (mid==n-1 or L[mid]!=L[mid+1]):
            return mid
        else:
            low = mid+1
    return -1         

print("---------------------")            
print("binarySearchLastOccurrence:")
print(binarySearchLastOccurrence([], 3))
print(binarySearchLastOccurrence([5], 3))
print(binarySearchLastOccurrence([5], 5))
print(binarySearchLastOccurrence([3,5,5,5], 5))
print(binarySearchLastOccurrence([3,5,5,5,5], 1))
print(binarySearchLastOccurrence([3,5,5,5,5], 2))
print(binarySearchLastOccurrence([3,5,7,7,7,15,26,30,33], 7))
print(binarySearchLastOccurrence([3,5,7,7,7,15,26,30,33], 33))
print(binarySearchLastOccurrence([3,5,7,7,7,15,26,30,33], 12))
print(binarySearchLastOccurrence([3,3,5,7,15,26,30,33], 26)) 
print(binarySearchLastOccurrence([3,3,3,3,3,3,3,3,3,3], 3))  
##############################################

def binarySearchFirstAndLastOccurrences(L, x):
    return (binarySearchFirstOccurrence(L, x),binarySearchLastOccurrence(L, x))
        

print("---------------------")            
print("binarySearchFirstAndLastOccurrences:")
print(binarySearchFirstAndLastOccurrences([], 3))
print(binarySearchFirstAndLastOccurrences([5], 3))
print(binarySearchFirstAndLastOccurrences([5], 5))
print(binarySearchFirstAndLastOccurrences([3,5,5,5], 5))
print(binarySearchFirstAndLastOccurrences([3,5,5,5,5], 1))
print(binarySearchFirstAndLastOccurrences([3,5,5,5,5], 2))
print(binarySearchFirstAndLastOccurrences([3,5,7,7,7,15,26,30,33], 7))
print(binarySearchFirstAndLastOccurrences([3,5,7,7,7,15,26,30,33], 33))
print(binarySearchFirstAndLastOccurrences([3,5,7,7,7,15,26,30,33], 12))
print(binarySearchFirstAndLastOccurrences([3,3,5,7,15,26,30,33], 26))  
print(binarySearchFirstAndLastOccurrences([3,3,3,3,3,3,3,3,3,3], 3))  

