#Lab 11 problem 2 Solution

# Ternary
print("-----------------------------")
print("Merge Sort:")
        
def  merge(L, R):
    """ Assumes L (left) and R (right) are lists of numbers sorted in non-decreasing order
        Returns a list C consisting L and R merged in non-decreasing order """
    C = []     ## intialize C to the empty list
    m = len(L)
    n = len(R)
    i = 0 # counter to traverse L 
    j = 0 # counter to traverse R
    while i!=m and j !=n: 
        if L[i]<R[j]: 
            C.append(L[i])
            i+=1
        else: 
            C.append(R[j])
            j+=1
    while i!=m:
        C.append(L[i])
        i+=1       
    while j!=n: 
        C.append(R[j])
        j+=1      
    return C


def ternaryMergeSort(A,low,high): 
    """ Assumes that A[low...high] is a list of numbers
         Modifies input list A[low...high] by sorting it in non-decreasing order 
         (does not return another list)"""
    # Base cases: if low==high or low>high in which case nothing to be done: 
    #  as a size-1 list  or an empty    list are already sorted
    if low<high: 
        third = low+(high-low)//3
        twoThird= low+2*(high-low)//3 
        ternaryMergeSort(A,low,third) # first recursive call 
        ternaryMergeSort(A,third+1,twoThird) # second recursive call
        ternaryMergeSort(A,twoThird+1,high) # third recursive call
        # Merge by calling the merge function twice:  
        C=merge(A[low:third+1],A[third+1:twoThird+1]) # merge lower third and mid third  
        A[low:high+1]=merge(C,A[twoThird+1:high+1]) # merge C with upper third and store back in A 
    return A
# Running time recurrence: T(n) = 3T(n/3) + Theta(n)
# Solution: T(n) = Theta(n*log(n)) by Case 2 of Master Theorem  (a=b=3 => log_b(a)=1) 

L=[3,5,1,77,66,34,6,88,54,24,50]
print('Before Sorting:',L)
n=len(L)
L2=ternaryMergeSort(L,0,n-1) 
print(' After Sorting:',L2)