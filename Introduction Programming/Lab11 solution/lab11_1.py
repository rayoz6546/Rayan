#Lab 11 problem 1 Solution

def isPalindrome(s): # Wrapper function 
    def isPalindromeRec(s,low,high):
         """ Recursive function which checks if substring s[low ... high] is palindrome 
            returns a True/False value""" 
         if low==high or low>high: 
             return True
         if s[low]==s[high]:
             return isPalindromeRec(s,low+1,high-1)
         else: 
             return False 
         
    n  = len(s)    
    return isPalindromeRec(s.lower(),0,n-1)
    

print(isPalindrome("anna"))
print(isPalindrome("cAvic"))
print(isPalindrome("a"))
print(isPalindrome("tx1aA1xt"))
print(isPalindrome(""))
print(isPalindrome("Civic"))
print(isPalindrome("ab")) 