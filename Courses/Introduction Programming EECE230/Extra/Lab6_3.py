
#Problem3 Solution

#prob 1a
def read_grid(fileName):
    fileHandle = open(fileName, 'r')

    #Read first line   
    s = fileHandle.readline() 
    nrows = int(s[0])
    ncols = int(s[2]) 
    #Read second line   
    s = fileHandle.readline()
    L = [0]*nrows
    for i in range(nrows):
#        print("Row: ", i, "takes range from ",i*ncols, " to ", (i+1)*ncols )
        s_row = s[i*ncols:(i+1)*ncols]
        L[i] = [c for c in s_row] 
    fileHandle.close()
    return L

#prob 1b
def search_down(L,i,j,word):
    nrows = len(L)
    ncols = len(L[0])
    wsize = len(word)
    if (i+wsize) > nrows:
        return False
    else:
        s = ""
        for k in range(wsize):
#            print(L[i+k][j])
            s += L[i+k][j]
#        print(s)
        if (s == word):
            print ("Word", word, " found looking down at location", "(",i,",",j,")")
            return True

def search_right(L,i,j,word):
    nrows = len(L)
    ncols = len(L[0])
    wsize = len(word)
    if (j+wsize) > ncols:
        return False
    else:
        s = ""
        for k in range(wsize):
            s += L[i][j+k]
        if (s == word):
            print ("Word", word, " found looking right at location", "(",i,",",j,")")
            return True

def search_diag(L,i,j,word):
    nrows = len(L)
    ncols = len(L[0])
    wsize = len(word)
    if (i+wsize)> nrows or (j+wsize) > ncols :
        return False
    else:
        s = ""
        for k in range(wsize):
            s += L[i+k][j+k]
        if (s == word):
            print ("Word", word, " found looking diagonal at location", "(",i,",",j,")")
            return True

    
def search_grid(L,word):
    nrows = len(L)
    ncols = len(L[0])
    found = False
    for i in range(nrows):
        for j in range(ncols):
            if L[i][j] == word[0]:
                print ("Word 1st character at location", "(",i,",",j,")")
                foundD = search_down(L,i,j,word)
                foundR = search_right(L,i,j,word)
                foundDi = search_diag(L,i,j,word)
                found = foundD or foundR or foundDi
            if found:
                break
        if found:
            break
    if not found:
        print("Could not find: ", word)
    

L = read_grid('grid.txt')
print('\nPrinting the grid')
for line in L:
    print(line)
word = "computer"
search_grid(L,word)
word = "bond"
search_grid(L,word)
word = "access"
search_grid(L,word)
#important boundary npp found at boundary, nppa no
word = "npp"
search_grid(L,word)
word = "nppa"
search_grid(L,word)