#Lab 11 #4 Solution

def parenthesesAndBracketsChecker(s):  
    S = []
    for c in s: 
        if c == '(' or c == '[':
            S.append(c)
        elif c==')':
            if len(S)==0 or S.pop()!='(': return False   
        elif c==']':
            if len(S)==0 or S.pop()!='[': return False          
    if len(S)==0: 
        return True 
    else:
        return False
    
print(parenthesesAndBracketsChecker("a(aa)aa")) 
print(parenthesesAndBracketsChecker("a(aa)a]a")) 
print(parenthesesAndBracketsChecker("([aa(b)c[[aaaaa]]r(d)]dd)")) 
print(parenthesesAndBracketsChecker("a([b)]")) 