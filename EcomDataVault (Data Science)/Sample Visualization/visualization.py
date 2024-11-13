import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


df_ur = pd.read_csv('sampleData/test_user_reviews.csv')
df_pm = pd.read_csv('sampleData/test_metadata.csv')

df_ur['timestamp'] = pd.to_datetime(df_ur['timestamp'])
df_ur['year_month'] = df_ur['timestamp'].dt.to_period('M')


#-----------------------------------------------USER REVIEWS-------------------------------------------------#
def review_trends():
    monthly_review_counts = df_ur.groupby('year_month').size()
    monthly_avg_rating = df_ur.groupby('year_month')['rating'].mean()

    # Review Trends By Month 
    plt.figure(figsize=(12, 6))
    # Number of Reviews per month
    plt.subplot(1, 2, 1)
    monthly_review_counts.plot(kind='line', marker='o', color='b')
    plt.title('Number of Reviews per Month')
    plt.xlabel('Month')
    plt.ylabel('Number of Reviews')
    plt.grid(True)

    # Average Rating per Month
    plt.subplot(1, 2, 2)
    monthly_avg_rating.plot(kind='line', marker='o', color='r')
    plt.title('Average Rating per Month')
    plt.xlabel('Month')
    plt.ylabel('Average Rating')
    plt.grid(True)
    plt.tight_layout()
    plt.savefig("plots/review_trends_per_month.png")
    # plt.show()
    plt.close()


def review_volume_overtime():
    monthly_reviews = df_ur.groupby('year_month').size()

    plt.figure(figsize=(10, 6))
    monthly_reviews.plot(kind='line', marker='o', color='green')
    plt.title('Number of Reviews Over Time')
    plt.xlabel('Month')
    plt.ylabel('Number of Reviews')
    plt.grid(True)
    plt.savefig("plots/review_volume_overtime.png")
    # plt.show()
    plt.close()

def reviews_helpfulness():
    plt.figure(figsize=(10, 6))
    df_ur.groupby('helpful_vote').size().head(10).plot(kind='bar', color='purple')
    plt.title('Distribution of Helpful Votes')
    plt.xlabel('Helpful Votes')
    plt.ylabel('Number of Reviews')
    plt.savefig("plots/review_helpfulness.png")
    # plt.show()
    plt.close()

#----------------------------------------------PRODUCT METADATA------------------------------------------------#
def avg_rating_per_product():
    product_ratings = df_pm.groupby('title')['average_rating'].mean().sort_values(ascending=False)
    # Bar chart of average ratings for the top 10 products
    plt.figure(figsize=(12, 6))
    sns.barplot(x=product_ratings.head(10).index, y=product_ratings.head(10).values, palette='viridis')
    plt.xticks(rotation=45, ha='right')
    plt.xlabel('Product Title')
    plt.ylabel('Average Rating')
    plt.title('Top 10 Products by Average Rating')
    plt.tight_layout()
    plt.savefig("plots/top10products.png")
    # plt.show()
    plt.close()

def product_category_distribution():
    df_pm['main_category'] = df_pm['main_category'].apply(lambda x: x if x != '[]' else None)
    category_counts = df_pm['main_category'].value_counts()

    plt.figure(figsize=(12, 8))
    category_counts.head(20).plot(kind='bar', color='skyblue')
    plt.title('Top 20 Product Categories Distribution')
    plt.xlabel('Category')
    plt.ylabel('Frequency')
    plt.xticks(rotation=45, ha='right')
    plt.tight_layout()
    plt.grid(True)
    plt.savefig("plots/product_category_distribution.png")
    # plt.show()
    plt.close()

def products_price_distribution():
    df_pm['price'] = pd.to_numeric(df_pm['price'], errors='coerce')

    plt.figure(figsize=(10, 6))
    df_pm['price'].plot(kind='line')
    plt.title('Price Distribution of Products')
    plt.xlabel('Price ($)')
    plt.ylabel('Frequency')
    plt.grid(True)
    plt.savefig("plots/products_price_distribution.png")
    # plt.show()
    plt.close()


def most_common_features():
    df_pm['features'] = df_pm['features'].apply(lambda x: x if x != '[]' else None)
    feature_counts = df_pm['features'].explode().value_counts()

    # Pie chart showing most common features (top 10)
    plt.figure(figsize=(10, 6))
    feature_counts.head(10).plot(kind='pie', color='darkblue')
    plt.title('Most Common Product Features')
    plt.xlabel('Feature')
    plt.ylabel('Frequency')
    plt.xticks(rotation=45)
    plt.tight_layout()
    plt.savefig("plots/most_common_features.png")
    # plt.show()
    plt.close()

def avg_rating_vs_price_byCategory():
    category_performance = df_pm.groupby('main_category').agg({'price': 'mean', 'average_rating': 'mean'}).reset_index()

    # Category, Average Price vs. Rating
    plt.figure(figsize=(12, 8))
    plt.scatter(category_performance['price'], category_performance['average_rating'], s=category_performance['price'] * 0.5, alpha=0.6)
    plt.title('Product Category Performance: Average Price vs. Average Rating')
    plt.xlabel('Average Price ($)')
    plt.ylabel('Average Rating')
    plt.grid(True)
    plt.savefig("plots/avg_rating_vs_price_by_category.png")
    # plt.show()
    plt.close()

#-----------------------------------------------------BOTH-------------------------------------------------#
def correlation_price_rating():
    avg_rating_df = df_ur.groupby('asin')['rating'].mean().reset_index()
    merged_df = pd.merge(df_pm, avg_rating_df, how='left', left_on='parent_asin', right_on='asin')

    # Correlation between price and average rating
    plt.figure(figsize=(10, 6))
    plt.scatter(merged_df['price'], merged_df['rating'], alpha=0.6, color='purple')
    plt.title('Price vs. Average Rating')
    plt.xlabel('Price ($)')
    plt.ylabel('Average Rating')
    plt.grid(True)
    plt.savefig("plots/price_vs_rating.png")
    # plt.show()
    plt.close()

def rating_distribution_by_category():
    df_merged = pd.merge(df_ur, df_pm[['parent_asin', 'main_category']], left_on='parent_asin', right_on='parent_asin', how='left')
    df_merged = df_merged.dropna(subset=['main_category'])


    plt.figure(figsize=(12, 8))
    sns.boxplot(x='main_category', y='rating', data=df_merged, palette='viridis')

    plt.xticks(rotation=45, ha='right')
    plt.title('Rating Distribution by Product Category', fontsize=16)
    plt.xlabel('Product Category', fontsize=12)
    plt.ylabel('Rating', fontsize=12)

    plt.grid(True)
    plt.tight_layout()

    plt.savefig("plots/rating_distribution_by_category.png")
    # plt.show()
    plt.close()


review_trends()
review_volume_overtime()
reviews_helpfulness()

avg_rating_per_product()
product_category_distribution()
products_price_distribution()
most_common_features()
avg_rating_vs_price_byCategory()

correlation_price_rating()
rating_distribution_by_category()




