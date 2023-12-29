y<-3 #assignment(equivalent to x=3)
x=y+2
print(x)
a=2*3+6-2/4
print(a)
9%/%4 # integer division 
9%%4  # modulo

floor(2.9)
ceiling(2.9)

round(pi,3)  #round pi to 3 places after decimal
round(12/8)  # by default rounds to integer 

vector1<-c(2,4,6,8)
print(vector1[1])   #first element of vector1 (2)
print(vector1[1:3])  #from 1st to 3rd element
print(vector1[c(1,2,4)])  #choose 1st,2nd and 4th element of vector


vector2<-rep(1,times=4)   #repeat 1 four times
print(vector2)

vector3<-seq(from=2,to=10,by=2)  #elements from 2 to 10 by jump of 2
print(vector3)
show(vector3)
# we can just omit the words "from", "to" and "by" (example: seq(2,10,2))

vector4<-c(vector1,vector2,vector3)
print(vector4)


print(vector1+vector2)  # element wise addition (same for other operations)

# USEFUL FUNCTIONS FOR VECTORS #

max(vector1)
min(vector1)
length(vector1)
length(vector1[1:3])
sort(vector1)
mean(vector1)
var(vector1)
sum(vector1)
cumsum(vector1)
prod(vector1)
cumprod(vector1)

# MATRICES #

c<-seq(1,6);c   #first create vector c

A<-matrix(c,2,3)   #by default it fills by column

B<-matrix(c,2,3,byrow=TRUE)   #fills by row

print(A)
print(B)

is.matrix(A)
is.vector(B)

print(A[1,2]) #element in first row, second column
print(A[1,]) #first row
print(A[,3]) # third column


x<-5
mode(x)  #mode = variable type
x<-TRUE
mode(x)
x<-"rayan hassan"
mode(x)
x<-c(1,4,3,2,3)
mode(x)
x<-c("h","r")
mode(x)

x1<-"harry"
x2<-"potter"

z<-paste(x1,x2)   # combines x1 and x2
print(z)
  

z<-paste(x1,x2,sep="   ")  #seperate 
print(z)


x <- "7"
x
mode(x)
x <- as.numeric(x)   #force to use as numeric not string (verses as.character)
x
mode(x)
x + 5



w <- c(1,2,3,4,5)
v <- c("William","Henry","Gates", "III")
z <- paste(x1,x2)
newList <- list("Bill",w,v,z,6,7)
newList


newList[3]
mode(newList[3])
newList[1]
mode(newList[1]) # Notice that the result is a list even there is only one element

