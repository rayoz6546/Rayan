import sqlite3
import pandas as pd
from fpdf import FPDF
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

def ReadCSV(file):
    df=pd.read_csv(file)
    return df

df_main = ReadCSV("netflix_employee_data.csv")
df_new_employees = ReadCSV("new_employees.csv")
df_new_grad = ReadCSV("new_grads.csv")
df_female = ReadCSV("female_hires.csv")

df = pd.concat([df_main,df_new_employees,df_new_grad, df_female], ignore_index=True)

# print(df.shape)
# print(df.head(4))

#print(df.isnull().sum())  # shows how much null/missing values we have in each column

df['Years_at_Company'].fillna(df['Years_at_Company'].median(), inplace=True)
df['Salary'].fillna(df['Salary'].median(), inplace=True)
df['Termination_Flag'].fillna('None', inplace=True)
#print(df.isnull().sum())  # check that no more missing values

df['Gender']=df['Gender'].astype(str).str.strip()
df['Gender']= df['Gender'].map({'Male':0, 'Female':1, '0':0, '1':1})
df['Gender']=df['Gender'].fillna(-1)
#print(df.head(10))

#print(df['Gender'].unique())

df = df.drop_duplicates()


# ---------------------------------------------Question 1-----------------------------------------------# 

number_promoted_eng_for_question13 = df[(df['Department']=='Engineering') & (df['Experience_Level']) & (df['Years_at_Company']>3)]['Employee_ID'].count()

df.loc[(df['Department']=='Engineering') & (df['Experience_Level']) & (df['Years_at_Company']>3), 'Experience_Level']= 'Senior'
# print(df['Department'].unique())


question1 = df[(df['Experience_Level']=='Senior') & (df['Department']=='Engineering') & (df['Years_at_Company']>3)]

# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=15)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Promoted Senior Engineers", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Years_at_Company",1)
pdf.cell(30,10,"Experience_Level",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question1.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, str(row['Years_at_Company']),1)
    pdf.cell(30,10, row['Experience_Level'],1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question1.pdf'
pdf.output(pdf_output_path)

# ---------------------------------------------Question 2-----------------------------------------------# 

df['Flagged']=['No']*df.shape[0]  #add a new Flagged column
df.loc[(df['Department']=='Customer Support') & (df['Years_at_Company']<2), 'Flagged']='Yes'

question2 = df[(df['Flagged']=='Yes') & (df['Department']=="Customer Support")]


# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=15)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Flagged Customer Support Employees", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Years_at_Company",1)
pdf.cell(30,10,"Flagged",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question2.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, str(row['Years_at_Company']),1)
    pdf.cell(30,10, row['Flagged'],1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question2.pdf'
pdf.output(pdf_output_path)


# ---------------------------------------------Question 3-----------------------------------------------# 

df['Freeze']=['No']*df.shape[0]
df.loc[(df['Department']=='Marketing'), 'Freeze']='Yes'

question3 = df[(df['Department']=="Marketing")]

# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=15)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Employees with Freezed Salaries", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(30,10,"Freeze",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question3.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(30,10, row['Freeze'],1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question3.pdf'
pdf.output(pdf_output_path)

# ---------------------------------------------Question 4-----------------------------------------------# 

female_nbre = df[(df['Department']=='Engineering') & (df['Gender']==1)]['Gender'].count()
male_nbre = df[(df['Department']=='Engineering') & (df['Gender']==0)]['Gender'].count()
ratio = male_nbre/female_nbre


# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=15)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Gender Ratio in Engineering Department Report", ln=True, align='C')

# Add Gender Counts
pdf.set_font('Arial', 'B', 10)
pdf.cell(40,10, "Number of Males:", 0, 1)
pdf.set_font('Arial', '', 10)
pdf.cell(40, 10, str(male_nbre), 0, 1)
pdf.set_font('Arial', 'B', 10)
pdf.cell(40, 10, "Number of Females:", 0, 1)
pdf.set_font('Arial', '', 10)
pdf.cell(40, 10, str(female_nbre), 0, 1)
pdf.set_font('Arial', 'B', 10)
pdf.cell(40, 10, "Gender Ratio (Males to Females):", 0, 1)
pdf.set_font('Arial', '', 10)
pdf.cell(40, 10, str(round(ratio, 2)), 0, 1)
pdf.set_font('Arial', 'B', 10)
pdf.cell(40, 10, "Explanation:", 0, 1)
pdf.set_font('Arial', '', 10)
explanation = ("The male to female ratio is around 69%, which means there are fewer men than women in the Engineering department. "
               "Specifically, there are 69 males for every 100 females.")

for line in explanation.split('\n'):
    pdf.multi_cell(0, 10, line)

# Saving the PDF file
pdf_output_path = 'Question4.pdf'
pdf.output(pdf_output_path)


# ---------------------------------------------Question 5-----------------------------------------------# 

df['Salary 5% Bonus'] = df['Salary']
df.loc[(df['Department']=="Product Management") & (df['Years_at_Company']>7), 'Salary 5% Bonus']*=1.05
question5 = df[(df['Department']=="Product Management") & (df['Years_at_Company']>7)]



# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Bonus for Product Management Employees", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Years_at_Company",1)
pdf.cell(20,10,"Salary",1)
pdf.cell(30,10,"Salary 5% Bonus",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question5.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, str(row['Years_at_Company']),1)
    pdf.cell(20,10, str(round(row['Salary'],2)),1)
    pdf.cell(30,10, str(round(row['Salary 5% Bonus'],2)),1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question5.pdf'
pdf.output(pdf_output_path)


# ---------------------------------------------Question 6-----------------------------------------------# 

df.loc[((df['Department']=='HR') & (df['Years_at_Company']>10)), 'Department'] = 'Talent Development'

question6 = df[(df['Department']=='Talent Development') & (df['Years_at_Company']>10)]


# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Relocating HR employees to Talent Development", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Years_at_Company",1)

pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question6.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, str(row['Years_at_Company']),1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question6.pdf'
pdf.output(pdf_output_path)




# ---------------------------------------------Question 7-----------------------------------------------# 

salary_cap = 130000

data_for_question13 = df[(df['Department']=='Engineering') & (df['Salary']>salary_cap)].copy()

df.loc[((df['Department']=='Engineering') & (df['Salary']>salary_cap)), 'Salary'] = salary_cap

question7 = df[(df['Department']=='Engineering')]


# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Salary Cap in Engineering", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Salary",1)

pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question7.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, str(row['Salary']),1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question7.pdf'
pdf.output(pdf_output_path)



# ---------------------------------------------Question 8-----------------------------------------------# 


data_confidential = df.copy()

data_confidential.loc[(data_confidential['Experience_Level']=='Senior'),'Department']='Data Science'

question8 = data_confidential[(data_confidential['Experience_Level']=='Senior')]



# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="New Data Science Team", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Exerience Level",1)

pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question8.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, row['Experience_Level'],1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question8.pdf'
pdf.output(pdf_output_path)


# ---------------------------------------------Question 9-----------------------------------------------# 

# first prepare and clean data

df_new_new_employees = ReadCSV("new_new_employees.csv")
df_new_new_grad = ReadCSV("new_new_grads.csv")



df_new = pd.concat([df_new_new_employees, df_new_new_grad], ignore_index=True)

#print(df_new.isnull().sum())  

df_new['Years_at_Company'].fillna(df_new['Years_at_Company'].median(), inplace=True)
df_new['Salary'].fillna(df_new['Salary'].median(), inplace=True)

#print(df_new_new_employees.isnull().sum())  

# df_new['Gender']= df_new['Gender'].map({'Male':0, 'Female':1})

df_new = df_new.drop_duplicates()



# now to answer question 9 

# starting by analysing distribution of engineers and product managers (based on experience) in the dataset we already have (not the new ones)



number_senior_Engineering = df[(df['Department']=='Engineering') & (df['Experience_Level']=='Senior')]['Employee_ID'].count()
number_junior_Engineering = df[(df['Department']=='Engineering') & (df['Experience_Level']=='Junior')]['Employee_ID'].count()
number_mid_Engineering = df[(df['Department']=='Engineering') & (df['Experience_Level']=='Mid')]['Employee_ID'].count()

number_senior_PM = df[(df['Department']=='Product Management') & (df['Experience_Level']=='Senior')]['Employee_ID'].count()
number_junior_PM = df[(df['Department']=='Product Management') & (df['Experience_Level']=='Junior')]['Employee_ID'].count()
number_mid_PM = df[(df['Department']=='Product Management') & (df['Experience_Level']=='Mid')]['Employee_ID'].count()



engineering_candidates = df_new[df_new['Department']=='Engineering']
PM_candidates = df_new[df_new['Department']=='Product Management']


# choose 20 senior with highest experience

senior_new_Eng = engineering_candidates[(engineering_candidates['Experience_Level']=='Senior')].nlargest(10,'Years_at_Company')
senior_new_PM = PM_candidates[(PM_candidates['Experience_Level']=='Senior')].nlargest(10,'Years_at_Company')



question9 = pd.concat([senior_new_Eng, senior_new_PM], ignore_index=True)


# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Hiring 20 new Employees", ln=True, align='C')

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Number of senior Engineers already at company:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(number_senior_Engineering),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Number of mid Engineers already at company:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(number_mid_Engineering),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Number of junior Engineers already at company:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(number_junior_Engineering),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Number of senior Product Manager already at company:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(number_senior_PM),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Number of mid Product Manager already at company:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(number_mid_PM),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Number of junior Product Manager already at company:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(number_junior_PM),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Explanation:",0,1)
pdf.set_font('Arial', '',10)

explanation = ("The results show that there are 0 seniors in both Engineering and Product Management departments. "
               "Additionally, there is already a high number of Juniors in each. "
               "As for mid employees, Product Management has a much higher number, but both have enough. "
               "Therefore, priority should be given to hiring senior employees. "
               "We can hence hire 10 seniors for each department, since we are only basing our decision on gaps identified in current skill sets and talent acquisition "
               "(If we were taking salaries/cost into consideration, we would have hired a bit less seniors since they cost more). "
               "Finally, we want to choose the seniors with highest experience, therefore the ones that have the most years at company.")

for line in explanation.split('\n'):
    pdf.multi_cell(0, 10, line,0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"List of the 20 new employees:",0,1)

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Exerience Level",1)
pdf.cell(40,10,"Years at Company",1)

pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question9.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, row['Experience_Level'],1)
    pdf.cell(40,10, str(row['Years_at_Company']),1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question9.pdf'
pdf.output(pdf_output_path)

# ---------------------------------------------Question 10-----------------------------------------------# 

question10 = df_new[((df_new['Department']=='HR') | ((df_new['Department']=='Marketing'))) & (df_new['Experience_Level']=='Junior') & (df_new['Years_at_Company']==0)]


# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Hiring Fresh Graduates", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Exerience Level",1)
pdf.cell(40,10,"Years at Company",1)

pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question10.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, row['Experience_Level'],1)
    pdf.cell(40,10, str(row['Years_at_Company']),1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question10.pdf'
pdf.output(pdf_output_path)


# ---------------------------------------------Question 11-----------------------------------------------# 

# First let's develop the scoring system. 4 main factors are taken into account: years spent at company,
# salary, experience level, termination flag, or flagged


# Years: 
#        if less than 2 years at company ---> +1
#        if less than 4 years at company ---> +2
#        if less than 6 years at company ---> +3
#        if less than 8 years at company ---> +4
#        if less than 10 years at company ---> +5
#        if less than 12 years at company ---> +6
#        if less than 14 years at company ---> +7
#        if less than 16 years at company ---> +8
#        else ---> +10

# Salary: if less than $40000 ---> +0
#         if less than $50000 ---> +1
#         if less than $60000 ---> +2
#         if less than $70000 ---> +3
#         if less than $80000 ---> +4
#         if less than $90000 ---> +5
#         if less than $100000 ---> +6
#         if less than $110000 ---> +7
#         if less than $120000 ---> +8
#         if less than $130000 ---> +9
#         else ---> +10
# Level: if Junior ---> +1
#        if Mid ---> +3
#        if Senior ---> +5
# Termination: if Termination_Flaf = 'Retain' ---> +1
#              else ---> +0
# Flagged: if Flagged = 'No' ----> +1
#          else ---> +0

def years_score(years):
    if years <=2:
        return 1 
    elif years <=4:
        return 2
    elif years <=6:
        return 3
    elif years <=8:
        return 4
    elif years <=10:
        return 5
    elif years <=12:
        return 6
    elif years <=14:
        return 7
    elif years <=16:
        return 8
    else:
        return 10
    
def salary_score(salary):
    if salary <=40000:
        return 0
    elif salary <=50000:
        return 1
    elif salary <=60000:
        return 2
    elif salary <=70000:
        return 3
    elif salary <= 80000:
        return 4
    elif salary <= 90000:
        return 5
    elif salary <= 100000:
        return 6
    elif salary <= 110000:
        return 7
    elif salary <= 120000:
        return 8
    elif salary <= 130000:
        return 9
    else:
        return 10
    
def level_score(level):
    if level == 'Junior':
        return 1
    elif level == 'Mid':
        return 3
    elif level =='Senior':
        return 5

def termination_score(termination):
    if termination == 'Retain':
        return 1
    else: 
        return 0
     
def flagged_score(flagged):
    if flagged == 'No':
        return 1
    else: 
        return 0
    
    

# creating the score column
df['Score'] = (df['Years_at_Company'].apply(years_score) +
               df['Salary'].apply(salary_score)+ 
               df['Experience_Level'].apply(level_score)+
               df['Termination_Flag'].apply(termination_score) +
               df['Flagged'].apply(flagged_score))


def top_performers(top):  # pick top 10% performers
    threshold = top['Score'].quantile(0.9)
    top['Potential Promotion'] = top['Score'] >= threshold
    return top

d = df.groupby('Department').apply(top_performers) #pick top 10% performers in each department

question11 = d[d['Potential Promotion']]

# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Top Performers", ln=True, align='C')

# Set header for the table 
pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(40,10,"Score",1)
pdf.cell(40,10,"Potential Promotion",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question11.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(40,10, str(row['Score']),1)
    pdf.cell(40,10, str(row['Potential Promotion']),1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question11.pdf'
pdf.output(pdf_output_path)


# ---------------------------------------------Question 12-----------------------------------------------# 

# Risk Factor: If an employee has a high score but their salary is low they might want to leave

# First, I want to visualize the distribution of scores in relation to salaries in each department 



sns.set(style="whitegrid")
g = sns.FacetGrid(df, col="Department", col_wrap=3, height=4, sharex=True, sharey=True)
g.map(sns.scatterplot, 'Score', 'Salary', alpha=0.7) 
g.set_titles(col_template="{col_name} Department")
g.set_axis_labels("Score", "Salary")
plt.tight_layout()
plt.savefig("ScoresVsSalaries.png")
plt.close()


# Retention Plan:
# for each department: if score>=score_threshold and salary <= salary_threshold, then increase salary by 15%

def increase_salary(d):
    score_threshold = d['Score'].quantile(0.8)
    salary_threshold = d['Salary'].quantile(0.8)

    d['Retention_Plan']='No'
    d['Increased_Salary']=d['Salary']

    d.loc[(d['Score'] >= score_threshold) & (d['Salary']<=salary_threshold), 'Retention_Plan']='Yes'
    d.loc[(d['Score'] >= score_threshold) & (d['Salary']<=salary_threshold), 'Increased_Salary']*=1.15

    return d

d = df.groupby('Department').apply(increase_salary)



question12 = d[(d['Retention_Plan']=='Yes')]



# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Retention Strategy for Key Employees", ln=True, align='C')

pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Scores vs Salaries Per Department",0,1)
pdf.image('ScoresVsSalaries.png', x=10, y=30, w=190)
pdf.ln(200)

pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Explanation:",0,1)
explanation = ("The scatterplots above show the distribution of Scores vs Salaries for each department."
               "This helps in understanding the correlation between scores and salaries."
               "Of course other factors affect the scores (like explained in the previous question)"
               "but for this question, we will be increasing salaries for employees with high scores that have relatively low salaries."
               "This is because these employees are likely to leave the company (not being rewarded properly for their high score)."
               "To do that, we need to specify a threshold for both the scores and the salaries. These scatterplots help with that."
               "I chose both thresholds to be the 80th percentile in each department (as seen and explained in the code)."
               "Therefore, if an employee's score is higher than or equal to the score threshold AND their salary is less than or equal to the salary threshold,"
               "then a retention plan will be applied for them, which consists of a 15% increase in their salary.")
pdf.set_font('Arial', '', 10)
for line in explanation.split('\n'):
    pdf.multi_cell(0, 10, line,0,1)

# Set header for the table 
pdf.set_font('Arial', 'B', 10)

pdf.cell(30,10,"Employee_ID",1)
pdf.cell(40,10,"Name",1)
pdf.cell(40,10,"Department",1)
pdf.cell(12,10,"Score",1)
pdf.cell(18,10,"Salary",1)
pdf.cell(28,10,"Retention_Plan",1)
pdf.cell(30,10,"Increased_Salary",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', 'B', 10)
for index, row in question12.iterrows():
    pdf.cell(30,10, str(row['Employee_ID']),1)
    pdf.cell(40,10, row['Name'],1)
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(12,10, str(row['Score']),1)
    pdf.cell(18,10, str(round(row['Salary'],2)),1)
    pdf.cell(28,10, str(row['Retention_Plan']),1)
    pdf.cell(30,10, str(round(row['Increased_Salary'],2)),1)
    pdf.ln()

# Saving the PDF file
pdf_output_path = 'Question12.pdf'
pdf.output(pdf_output_path)

# ---------------------------------------------Question 13-----------------------------------------------# 

# Changes made overall including promotions, salary increments, and new hires that cost the company money:
# 1. Promoting Mid-level Engineers to Senior Engineers (question 1)
# 2. 5% bonus for Product Management Employees (question 5)
# 3. Hiring 20 new Senior Employees, 10 for Engineering and 10 for Product Management (question 9)
# 4. Hiring new fresh graduates for Marketing and HR (question 10)
# 5. Retention Plan -increased salaries- (question 12)

# 1.First let's find the average salary for a Senior Engineer vs Mid Engineer to find how much change #1 costs the company

senior_eng = df[(df['Department']=='Engineering')]

avg_salary_senior_eng = senior_eng['Salary'].mean()

mid_eng = df[(df['Department']=='Engineering') & (df['Experience_Level']=='Mid')]
avg_salary_mid_eng = mid_eng['Salary'].mean()

# So the extra cost that the company has to pay on average per promoted employee in question 1 is:

avg_extra_cost = avg_salary_senior_eng - avg_salary_mid_eng

# So the total extra cost is:

total_extra_cost1 = number_promoted_eng_for_question13*avg_extra_cost

# 2. Now let's calculate the total extra cost caused by the 5% bonus (change #2)

before = df[(df['Department']=='Product Management') & (df['Years_at_Company']>7)]['Salary'].sum()
after = df[(df['Department']=='Product Management') & (df['Years_at_Company']>7)]['Salary 5% Bonus'].sum()

total_extra_cost2 = after - before

# 3. To tackle change#3 we already know the average senior salary in Engineering, we need to find the one for Product Management

extra_cost_10_new_senior_eng = 10*avg_salary_senior_eng

senior_PM = df[(df['Department']=='Product Management') & (df['Experience_Level']=='Senior')]

avg_salary_senior_PM = senior_PM['Salary'].mean()

extra_cost_10_new_senior_PM = 10*avg_salary_senior_PM

# so the total extra cost caused by the new 20 hired employees is
total_extra_cost3 = extra_cost_10_new_senior_eng + extra_cost_10_new_senior_PM

# 4. Let's calculate average salary of Junior employees in HR and marketing who have 0 years at company to estimate change #4's cost

fresh_grad_HR = df[(df['Department']=='HR') & (df['Experience_Level']=='Junior') & (df['Years_at_Company']==0)]

avg_salary_fresh_grad_HR = fresh_grad_HR['Salary'].mean()

fresh_grad_marketing = df[(df['Department']=='Marketing') & (df['Experience_Level']=='Junior') & (df['Years_at_Company']==0)]

avg_salary_fresh_grad_marketing = fresh_grad_marketing['Salary'].mean()


number_new_HR = question10[question10['Department']=='HR']['Employee_ID'].count()
number_new_marketing = question10[question10['Department']=='Marketing']['Employee_ID'].count()

# so now for the total extra cost caused by the new fresh graduates hired
total_extra_cost4 = number_new_HR*avg_salary_fresh_grad_HR + number_new_marketing*avg_salary_fresh_grad_marketing

# 5. Finally, the extra cost caused by the retention plan is:
total_extra_cost5 = question12['Increased_Salary'].sum()-question12['Salary'].sum()


# FINAL AMOUNT OF MONEY THE COMPANY LOST WITH ALL THOSE CHANGES:
total_cost = total_extra_cost1+total_extra_cost2+total_extra_cost3+total_extra_cost4+total_extra_cost5


# Changes made overall that save the company money (benefits):
# 1. Terminating Employees in Customer Support (question2)
# 2. Salary Cap in Engineering


# Let's see how much money is saved with change #1. Recall that question2 is all the employees flagged in Customer Support
# which means they will be terminated. Therefore the money saved is equal to the sum of all their salaries

money_saved1 = question2['Salary'].sum()


# Now let's see how much money was saved in the Salary Cap in Engineering

money_saved2 = data_for_question13['Salary'].sum()-salary_cap*data_for_question13['Employee_ID'].count()


# The total amount of money made by the company is:

total_benefit = money_saved1 + money_saved2


# THE TOTAL IMPACT OF THE COMPANY IS:

total_impact = total_benefit - total_cost




# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Department Restructure Cost Analysis", ln=True, align='C')

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Cost of Promoting Mid-Engineers to Senior-Engineers:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_extra_cost1),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Cost of Giving 5% Bonus for Product Management Employees:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_extra_cost2),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Cost of Hiring 20 New Employees (in my case Seniors):",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_extra_cost3),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Cost of Hiring New Freshly Graduated Employees:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_extra_cost4),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Cost of Retention Plan:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_extra_cost5),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Total Cost:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_cost),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Benefit from Terminating Employees from Customer Support:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(money_saved1),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Benefit from Salary Cap in Engineering:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(money_saved2),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Total Benefit:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_benefit),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Total Impact on Company:",0,1)
pdf.set_font('Arial', '',10)
pdf.cell(30,10,str(total_impact),0,1)

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Explanation:",0,1)
pdf.set_font('Arial', '',10)

explanation = ("The total impact is negative, which means the company lost a considerable amount of money with all these changes."
               "Please view code for more details and explanation on how these values were calculated")

for line in explanation.split('\n'):
    pdf.multi_cell(0, 10, line,0,1)


# Saving the PDF file
pdf_output_path = 'Question13.pdf'
pdf.output(pdf_output_path)


# ---------------------------------------------Question 14-----------------------------------------------# 

critical = ['Engineering', 'Product Management']


non_critical_departments = df.query("Department not in @critical")

non_critical = non_critical_departments['Department'].unique()

# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Hiring Freeze in Non-Critical Departments", ln=True, align='C')

pdf.set_font('Arial', '', 10)
for dep in non_critical:
    pdf.cell(30,10,f"Recommendation: Hiring freeze for {dep}.",0,1)



# Saving the PDF file
pdf_output_path = 'Question14.pdf'
pdf.output(pdf_output_path)



# ---------------------------------------------Question 15-----------------------------------------------# 

salary_summary = df.groupby('Department')['Salary'].agg(['mean', 'median', 'std', 'count']).reset_index()


plt.figure(figsize=(12, 6))
sns.boxplot(x='Department', y='Salary', data=df)
plt.title('Salary Distribution by Department')
plt.xticks(rotation=45)
plt.ylabel('Salary')
plt.xlabel('Department')
plt.tight_layout()
plt.savefig("Salary_Distribution.png")
plt.close()



# Identify disparities. In this case, I chose to highlight departments with salaries significantly higher than the overall
overall_mean_salary = df['Salary'].mean()
salary_disparities = salary_summary[salary_summary['mean'] > overall_mean_salary]



# Initalize PDF Object
pdf = FPDF()
pdf.set_auto_page_break(auto=True, margin=10)
pdf.add_page()

# Set Title
pdf.set_font('Arial', 'B', 12)
pdf.cell(200, 10, txt="Analysis of Salary Disparities Across Departments", ln=True, align='C')

pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Boxplot showing Salary Distribution Per Department:",0,1)
pdf.image('Salary_Distribution.png', x=10, y=30, w=190)
pdf.ln(100)


pdf.set_font('Arial', 'B',10)
pdf.cell(30,10,"Salary Summary Per Department:",0,1)

# Set header for the table 
pdf.set_font('Arial', 'B', 10)

pdf.cell(40,10,"Department",1)
pdf.cell(30,10,"Mean",1)
pdf.cell(30,10,"Median",1)
pdf.cell(40,10,"Standard Deviation",1)
pdf.cell(30,10,"Count",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', '', 10)
for index, row in salary_summary.iterrows():
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(30,10, str(round(row['mean'],2)),1)
    pdf.cell(30,10, str(round(row['median'],2)),1)
    pdf.cell(40,10, str(round(row['std'],2)),1)
    pdf.cell(30,10, str(round(row['count'],2)),1)
    pdf.ln()

pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Departments with Higher-Than-Average Salaries:",0,1)

# Set header for the table 
pdf.set_font('Arial', 'B', 10)

pdf.cell(40,10,"Department",1)
pdf.cell(30,10,"Mean",1)
pdf.cell(30,10,"Median",1)
pdf.cell(40,10,"Standard Deviation",1)
pdf.cell(30,10,"Count",1)
pdf.ln()

# Set data in the table 
pdf.set_font('Arial', '', 10)
for index, row in salary_disparities.iterrows():
    pdf.cell(40,10, row['Department'],1)
    pdf.cell(30,10, str(round(row['mean'],2)),1)
    pdf.cell(30,10, str(round(row['median'],2)),1)
    pdf.cell(40,10, str(round(row['std'],2)),1)
    pdf.cell(30,10, str(round(row['count'],2)),1)
    pdf.ln()

pdf.set_font('Arial', 'B', 10)
pdf.cell(30,10,"Recommendation:",0,1)
pdf.set_font('Arial', '', 10)

r = ("Consider reviewing salaries in following departments: "
     "Data Science, "
     "Engineering, "
     "Product Management, "
     "Talent Development, "
     "to ensure alignment with overall salary trends. ")

for line in r.split('\n'):
    pdf.multi_cell(0,10,line,0,1)


# Saving the PDF file
pdf_output_path = 'Question15.pdf'
pdf.output(pdf_output_path)