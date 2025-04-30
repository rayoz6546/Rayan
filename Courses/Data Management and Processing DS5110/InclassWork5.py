import sqlite3
import pandas as pd


#-----------------------------RAYAN HASSAN SECTION 4----------------------------------#

def ReadDB():
    conn=sqlite3.connect("sales_data.db")
    df1=pd.read_sql(f'SELECT * FROM SALES', conn)
    return df1

def ReadText():
    df2 = pd.read_csv('sales_data.txt', delimiter='\t')
    return df2
def ReadCSV():
    df3=pd.read_csv('sales_data.csv')
    return df3 

df1=ReadDB()
df2=ReadText()
df3=ReadCSV()

Final_df = pd.concat([df1,df2,df3],axis=0)  #centralizing the data

# print(Final_df.head(10))

def Miss_Data():  # to clean data
    Final_df['Sales'].fillna(Final_df['Sales'].median(), inplace=True)  # we will fill any NA (missing value) by median
    Final_df['Profit'].fillna(Final_df['Profit'].median(), inplace=True)
    Final_df.dropna(subset=['Branch'], inplace=True)

    return Final_df

cleaned_data=Miss_Data()

# print(cleaned_data.head(10))


def DoubleData():  #remove any duplicates (using most recent dataframe: cleaned_data)
    cleanDF = cleaned_data.drop_duplicates()
    return cleanDF

cleanAll = DoubleData()
# print(cleanAll.head(10))

# other steps in preprocessing:  normalization, scaling, remove outliers, etc

def normalizeData1(cleanAll):
    cleanAll['Sales']=(cleanAll['Sales']-cleanAll['Sales'].mean())/cleanAll['Sales'].std()
    cleanAll['Profit']=(cleanAll['Profit']-cleanAll['Profit'].mean())/cleanAll['Profit'].std()

    return cleanAll




def normalizeData2(cleanAll):
    cleanAll['Sales']=(cleanAll['Sales']-cleanAll['Sales'].min())/(cleanAll['Sales'].max()-cleanAll["Sales"].min())
    cleanAll['Profit']=(cleanAll['Profit']-cleanAll['Profit'].min())/(cleanAll['Profit'].max()-cleanAll["Profit"].min())
    return cleanAll

# Final_clean2 = normalizeData1(cleanAll)

Final_clean2 = normalizeData1(cleanAll)
print(Final_clean2.head(4))

#total sales for each branch in January 2024
Final_clean2['Date']=pd.to_datetime(Final_clean2['Date'])
Final_clean2['Year_Month']=Final_clean2['Date'].dt.to_period('M')
TotalSales_jan = Final_clean2[(Final_clean2['Year_Month']=='2024-01')].groupby('Branch')['Sales'].sum()
print("\n")
print("Total sales for each Branch in January 2024")
print(TotalSales_jan)



#total sales for each month in dataset
MonthlySales=Final_clean2.groupby('Year_Month')['Sales'].sum()
print("\n")
print("Total monthly sales")
print(MonthlySales)

# branch with highest sale in March 2024
MySales=Final_clean2[Final_clean2['Year_Month']=='2024-03'].groupby('Branch')['Sales'].sum()
HighSales = MySales.idxmax()
print("\n")
print("Branch with Highest sales in March 2024")
print(HighSales)

# average monthly profit for each branch

average_monthly_profit = Final_clean2.groupby(['Branch', 'Year_Month'])['Profit'].mean().reset_index()
print("\n")
print("Average monthly profit for each Branch")
print(average_monthly_profit)


#month with highest total sales across all branches

TotalSales = Final_clean2.groupby(['Year_Month'])['Sales'].sum()
HighestSalesMonth = TotalSales.idxmax()
print("\n")
print("Month with Highest Sales across all branches")
print(HighestSalesMonth)

#month in which Branch C had the highest sale

branchC_Sales = Final_clean2[Final_clean2['Branch'] == 'Branch C']
monthly_sales_branchC = branchC_Sales.groupby('Year_Month')['Sales'].sum()
highest_sales_month_branchC = monthly_sales_branchC.idxmax()
print("\n")
print("Month in Branch C with Highest Sales")
print(highest_sales_month_branchC)


# total profit for Branch B in October 2023

branchB = Final_clean2[Final_clean2['Branch'] == 'Branch B']
october2023 = branchB[branchB['Year_Month'] == '2023-10']
total_profit = october2023['Profit'].sum()
print("\n")
print("Total Profit for Branch B in October 2023")
print(total_profit)

# branch with most negative profit + month

most_negative = Final_clean2.loc[Final_clean2['Profit'].idxmin()]
branch_MostNegativeProfit = most_negative['Branch']
month_MostNnegativeProfit = most_negative['Year_Month']

print("\n")
print("Branch with most negative profit + month")
print(branch_MostNegativeProfit)
print(month_MostNnegativeProfit)



# cumulative sales trend for branch A over the period covered in dataset
branchA= Final_clean2[Final_clean2['Branch'] == 'Branch A']
monthlySalesA = branchA.groupby('Year_Month')['Sales'].sum()
cumulativeSalesA = monthlySalesA.cumsum().reset_index()
print("\n")
print("Cumulative sales trend for branch A")

print(cumulativeSalesA)


# Comparing sales trend between Branch A and Branch B from January to March 2024

salesBranchA = branchA[branchA['Year_Month']==('2024-01' and '2024-02' and '2024-03')]['Sales'].sum()
print("\n")
print("sales trend for Branch A from January to March 2024")
print(salesBranchA)

salesBranchB = branchB[branchB['Year_Month']==('2024-01' and '2024-02' and '2024-03')]['Sales'].sum()
print("sales trend for Branch B from January to March 2024")
print(salesBranchB)

print("Therefore, sales trend for Branch B from January to March 2024 are higher")
