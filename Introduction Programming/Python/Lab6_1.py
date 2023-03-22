#Lab 6_1 Solution

def readPoints():
    # input each one separately to display a custom message for each point 
        xa = float(input("Input abcissa of first point A: "))
        ya = float(input("Input ordinate of first point A: "))
        xb = float(input("Input abcissa of second point B: "))
        yb = float(input("Input ordinate of second point B: "))
        xc = float(input("Input abcissa of third point C: "))
        yc = float(input("Input ordinate of third point C: "))
        xd = float(input("Input abcissa of fourth point D: "))
        yd = float(input("Input ordinate of fourth point D: "))
       #initialize L in order to be able to add elements 
        L=[]
      # L=[(xa,ya), (xb,yb), (xc, yc), (xd,yd)]? same thing but need to use .append(e) 
        L.append((xa,ya))
        L.append((xb,yb))
        L.append((xc,yc))
        L.append((xd,yd))
       #L is a list of tuples, each tuple is a coordinate of a point 
        return L
    

def displayPoints(L):
    print("The points A,B,C,D are respectively: ", end='')
    for i in range (len(L)-1):
        print (L[i], end=" ")
    #print last one separated because it won't go to the line when it displays the next message
    print(L[len(L)-1])

def createVectors(L):
    #L[i][j] to access an element of tuple inside the list 
    x1=  L[1][0]- L[0][0]
    y1 = L[1][1] - L[0][1]
    x2 = L[3][0]- L[2][0] 
    y2 = L[3][1] - L[2][1]
    M=[]
    M.append((x1, y1))
    M.append((x2,y2))
    return M
    #M is a list containig 2 elements, which are 2 tuples containing two int
    
def checkSame(M):
    #same vector if they have the same coordinates
    if M[0][0]==M[1][0] and M[0][1]==M[1][1]:
        print ("The vectors AB and CD are the same")
    else:
        print("The vectors are AB and CD NOT the same")

def checkCollinear(M):
    #colinear if x2y1 - x1y2 = 0
    if M[1][0]*M[0][1] - M[0][0]*M[1][1] ==0:
        print ("The vectors AB and CD are collinear")
    else: 
        print ("The vectors AB and CDare NOT collinear")

def dotProduct(M):
    #dot product: x1x2 + y1y2
    d = M[0][0]*M[1][0] + M[0][1]*M[1][1]
    return d

def checkOrthogonal(M):
    #dotproduct = 0
    if dotProduct(M) == 0:
        print ("The two vectors AB and CD are perpendicular")
    else:
        print ("The vectors AB and CD are NOT perpendicular")


L = readPoints()
print() #for display
displayPoints(L)
print() #for display
M = createVectors(L)
print ("Vectors AB and CD coordinates are: ", M[0], M[1])
checkSame(M)
checkCollinear(M)
print("The scalar product of AB and CD is : ", dotProduct(M))
checkOrthogonal(M)



    