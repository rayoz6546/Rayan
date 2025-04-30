import sqlite3
import pandas as pd

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
f= Final_df.head(10)
# print(f)

def Miss_Data():  # to remove missing values
    Final_df['Sales'].fillna(Final_df['Sales'].median(), inplace=True)  # we will fill any NA (missing value) by median
    Final_df['Profit'].fillna(Final_df['Profit'].median(), inplace=True)
    Final_df.dropna(subset=['Branch'], inplace=True)

    return Final_df

cleaned_data=Miss_Data()
c=cleaned_data.head(10)
# print(c)



def DoubleData(cleanData):  #remove any duplicates (using most recent dataframe: cleaned_data)
    cleanDF = cleanData.drop_duplicates()
    return cleanDF

cleanAll = DoubleData(cleaned_data)
ca = cleanAll.head(10)
# print(ca)

def normalizeData1(cleanAll):
    cleanAll['Sales']=(cleanAll['Sales']-cleanAll['Sales'].mean())/cleanAll['Sales'].std()
    cleanAll['Profit']=(cleanAll['Profit']-cleanAll['Profit'].mean())/cleanAll['Profit'].std()

    return cleanAll

Final_clean1 = normalizeData1(cleanAll)
fc1 = Final_clean1.head(4)

# print(fc1)


def normalizeData2(cleanAll):
    cleanAll['Sales']=(cleanAll['Sales']-cleanAll['Sales'].min())/(cleanAll['Sales'].max()-cleanAll["Sales"].min())
    cleanAll['Profit']=(cleanAll['Profit']-cleanAll['Profit'].min())/(cleanAll['Profit'].max()-cleanAll["Profit"].min())
    return cleanAll

Final_clean2 = normalizeData2(Final_clean1)
fc2 = Final_clean2.head(4)
# print(fc2)


Final_clean2['Date']=pd.to_datetime(Final_clean2['Date'])
Final_clean2['YearMonth'] = Final_clean2['Date'].dt.to_period('M')
Final_monthlySales_trends = Final_clean2.groupby('YearMonth')['Sales'].sum().reset_index()

print(Final_monthlySales_trends)
