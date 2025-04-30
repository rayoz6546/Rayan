import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

path = "diabetes.csv"
diabetes_df = pd.read_csv(path)

print(diabetes_df.head(4))

numeric_col = ['Pregnancies','Glucose','BloodPressure','SkinThickness','Insulin','BMI','Age']

Q1 = diabetes_df[numeric_col].quantile(0.25)
Q3 = diabetes_df[numeric_col].quantile(0.75)

IQR = Q3 - Q1

outliers=(diabetes_df[numeric_col]<(Q1-1.5 *IQR)) | (diabetes_df[numeric_col]>(Q3+1.5 *IQR)) 

# so here outliers are defined as lower than 25% of the data OR higher than 75% of the data
print(outliers.sum())  # prints how much outliers we have per column

df_copy = diabetes_df.copy()

for col in numeric_col:
    lower_bound = Q1[col] - 1.5*IQR[col]
    upper_bound = Q3[col] + 1.5*IQR[col]
    df_copy[col] = df_copy[col].clip(lower=lower_bound, upper=upper_bound)

print(df_copy.head(4))

# scaling

from sklearn.preprocessing import StandardScaler
s = diabetes_df.drop(columns=['Outcome'])
scaler = StandardScaler()

scaled_data = scaler.fit_transform(s)

scaled_df = pd.DataFrame(scaled_data, columns=s.columns)
scaled_df['Outcome']=diabetes_df['Outcome'].values



plt.Figure(figsize = (15,10))
sns.boxplot(data=scaled_df[numeric_col])
plt.xticks(rotation=90)
plt.show()
plt.close()




plt.figure(figsize=(10,8))
corr_matrix = scaled_df.corr()
sns.heatmap(corr_matrix, annot=True, cmap='coolwarm', linewidths=0.5)
plt.title('Correlation Between Features')
plt.show()
plt.close()

# # heat map explanation: 
# # 1 means positive correlation 
# # -1 means negative correlation
# # 0 means there is no relation between features 


# # normalization, scaling, cleaning etc. should be done before though


plt.figure(figsize=((10,8)))
sns.scatterplot
sns.scatterplot(data=scaled_df, x="Glucose", y = "Insulin", hue="Outcome", palette="coolwarm")
plt.title("Glucose vs Insulin with Outcome")
plt.show()
plt.close()

# from ydata_profiling import ProfileReport
# profile = ProfileReport(diabetes_df)
# profile.to_notebook_iframe()



#------------------------------------------5 UNIQUE VIZUALISATIONS------------------------------------------#

# Histogram showing Outcome based on Age

plt.figure(figsize=(10, 6))
sns.histplot(data=diabetes_df, x='Age', multiple='dodge', hue='Outcome', kde=True, bins=30, palette='coolwarm', alpha=0.5)
plt.title('Histogram showing Age Effect on Diabetes')
plt.xlabel('Age')
plt.ylabel('Frequency')
plt.legend(title='Outcome', labels=['Diabetes (1)', 'No Diabetes (0)'])
# plt.show()
plt.savefig("myApp/static/plot1.png")
plt.close()


# Violin Plot for each numeric column 

plt.Figure(figsize = (15,10))
sns.violinplot(data=scaled_df[numeric_col])
plt.title('Violin Plot Showing Effect of Several Factors on Diabetes')
plt.xticks(rotation=90)
# plt.show()
plt.savefig("myApp/static/plot2.png")
plt.close()


# Swarm Plot for Outcome vs Glucose
plt.figure(figsize=(10, 6))
sns.swarmplot(data=diabetes_df,x='Outcome', y='Glucose', palette='coolwarm')
plt.title('Swarm Plot Showing Glucose Effect on Diabetes')
plt.xlabel('Outcome')
plt.ylabel('Glucose Level')
# plt.show()
plt.savefig("myApp/static/plot3.png")
plt.close()



# Histogram showing SkinThickness vs Outcome
g = sns.FacetGrid(diabetes_df, col='Outcome', height=5, aspect=1)
g.map(sns.histplot, 'SkinThickness', bins=30, kde=True, color='blue', alpha=0.6)

g.set_titles('Outcome: {col_name}')
g.set_axis_labels('SkinThickness', 'Count')
plt.subplots_adjust(top=0.8)
g.fig.suptitle('SkinThickness Effect on Diabetes')


# plt.show()
plt.savefig("myApp/static/plot4.png")
plt.close()


# Radar Chart for Outcome vs Features 

num_features = len(numeric_col)
angles = np.linspace(0, 2 * np.pi, num_features, endpoint=False).tolist()

angles += angles[:1]

means_no_diabetes = scaled_df[scaled_df['Outcome'] == 0][numeric_col].mean().values.flatten().tolist()
means_diabetes = scaled_df[scaled_df['Outcome'] == 1][numeric_col].mean().values.flatten().tolist()


means_no_diabetes += means_no_diabetes[:1]
means_diabetes += means_diabetes[:1]

plt.figure(figsize=(8, 8))
ax = plt.subplot(111, polar=True)


ax.fill(angles, means_no_diabetes, color='blue', alpha=0.25, label='No Diabetes (0)')
ax.plot(angles, means_no_diabetes, color='blue', linewidth=2)

ax.fill(angles, means_diabetes, color='red', alpha=0.25, label='Diabetes (1)')
ax.plot(angles, means_diabetes, color='red', linewidth=2)

ax.set_yticklabels([])
ax.set_xticks(angles[:-1])
ax.set_xticklabels(numeric_col)

plt.title('Radar Chart of Feature Means by Outcome')
plt.legend(loc='upper right')
# plt.show()
plt.savefig("myApp/static/plot5.png")
plt.close()



