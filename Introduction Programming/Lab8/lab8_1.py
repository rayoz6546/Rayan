#LAB 8 PROBLEM 1


def read_grades(file_name):
    L=[]
    nameHandle = open (file_name, 'r')
    
    for line in nameHandle:
        sub = []
        line=line.split()
        sub.append(line[0])
        
        for i in range (len(line[1])):
            sub.append(line[1][i])
        
        L.append(sub)
    
    nameHandle.close()
    
    return L


def compute_grades(L):
    G= []
    for i in range (1,len(L)):
        ans=[]
        c = 0
        w = 0
        for j in range (1, len(L[i])):
            if L[i][j]== L[0][j]:   #correct
                c +=1
                
            elif L[i][j] != L[0][j] and L[i][j]!= '_':  #incorrect
                w +=1
        
        ans = [L[i][0], c, w, c*10 - w*10]
        G.append(ans)
    
    return G

############################  PART C  ##################################

file_name = input("Please enter the file name: ")

L = read_grades(file_name)
print('Part A')
#part A output
print(L)
grades = compute_grades(L)
print('Part B')
print(grades)
NH1 = open(file_name, 'r')

C = NH1.readlines()

K=[]

for i in range (len(C)):
    s = C[i].split()
    K.append(s)


nameHandle2= open ("student_scores.txt", 'w')
#always cast to str when printing to file
nameHandle2.write("The key answer is: " + str(K[0][0]) + ' ' + str(K[0][1])+ '\n')
nameHandle2.write('\n')
print('The key answer is:',K[0][0],K[0][1])   #to avoid printing []
for i in range (1,len(K)):
    nameHandle2.write("Student ID " + str(K[i][0]) + ' answered '+ str(K[i][1]) + ' have ' + str(grades[i-1][1]) + ' correct and '+ str(grades[i-1][2]) + ' wrong answers, got ' + str(grades[i-1][3]) + '/100' +' \n')     
    print("Student ID",K[i][0],'answered',K[i][1],'have',grades[i-1][1],'correct and',grades[i-1][2],'wrong answers, got',grades[i-1][3],'/100')
sum_grades=0
for j in range (len(grades)):
    sum_grades += grades[j][3]

net_average = sum_grades / len(grades)
number_of_students = len(grades)

nameHandle2.write('\n')
nameHandle2.write("\nThe net average is: " + str(net_average))
nameHandle2.write('\nThe number of students is: ' + str(number_of_students))
print('\nThe net average is:',net_average)
print('The number of students is:',number_of_students)
nameHandle2.close()


###########################  PART D  ##################################


one = 0
two = 0
three = 0
four = 0
#Calculation for the pie range
for i in range (len(grades)):
    if grades[i][3]==100:
        one+=1
    elif grades[i][3] >= 80:
        two += 1
    elif grades[i][3] >= 50:
        three += 1
    else:
        four +=1 

sizes = [one, two, three,four]
labels = ['100', '80-90', '50-70', 'less than 50']
colors = ['gold', 'yellowgreen', 'lightcoral', 'lightskyblue']
explode = (0.1, 0, 0, 0)

import matplotlib.pyplot as plt

plt.pie(sizes, explode=explode, labels=labels, colors=colors, autopct='%1.1f%%')
plt.title('Distribution of grades')
