import ast
import io
from flask import Flask, Response, json, jsonify, render_template, request
import pandas as pd
import matplotlib.pyplot as plt
import os
import seaborn as sns
import numpy as np



app = Flask(__name__)

def load_data(file_path):
    return pd.read_csv(file_path)

reviews_df = load_data('data/test_user_reviews.csv')
metadata_df = load_data('data/test_metadata.csv')


reviews_df['timestamp'] = pd.to_datetime(reviews_df['timestamp'])
reviews_df['year_month'] = reviews_df['timestamp'].dt.to_period('M')

def review_trends_volume(df_ur):
    monthly_review_counts = df_ur.groupby('year_month').size()


    plt.figure(figsize=(12, 6))
    
    # Number of Reviews per month
    monthly_review_counts.plot(kind='line', marker='o', color='b')
    plt.title('Number of Reviews per Month')
    plt.xlabel('Month')
    plt.ylabel('Number of Reviews')
    plt.grid(True)

    plt.tight_layout()
    image_path = os.path.join('static', 'review_trends_volume.png')
    plt.savefig(image_path)
    plt.close()

    return image_path

def review_trends_avgRating(df_ur):

    monthly_avg_rating = df_ur.groupby('year_month')['rating'].mean()

    plt.figure(figsize=(12, 6))

    # Average Rating per Month
    monthly_avg_rating.plot(kind='line', marker='o', color='r')
    plt.title('Average Rating per Month')
    plt.xlabel('Month')
    plt.ylabel('Average Rating')
    plt.grid(True)

    plt.tight_layout()
    image_path = os.path.join('static', 'review_trends_avgRating.png')
    plt.savefig(image_path)
    plt.close()

    return image_path


def products_price_distribution(df_pm):
    df_pm['price'] = pd.to_numeric(df_pm['price'], errors='coerce')
    df_pm = df_pm[df_pm['price'].apply(lambda x: x.is_integer() if pd.notnull(x) else False)]

    plt.figure(figsize=(15, 6))
    sns.boxplot(x=df_pm['price'], palette='viridis')
    plt.xlim(0, 700)
    plt.title('Price Distribution of Products')
    plt.xlabel('Price ($)',fontsize=14)
    plt.ylabel('Frequency',fontsize=14)
 
    plt.grid(True)
    plt.tight_layout()
    image_path = os.path.join('static', 'products_price_distribution.png')
    plt.savefig(image_path)
    plt.close()

    return image_path
    


def most_common_categories(df_pm):
    df_pm['categories'] = df_pm['categories'].apply(lambda x: ast.literal_eval(x) if isinstance(x, str) else x)
    df_pm['categories'] = df_pm['categories'].apply(lambda x: x if x != '[]' else None)
    category_counts = df_pm['categories'].explode().value_counts()

    plt.figure(figsize=(10, 6))
    category_counts.head(10).plot(kind='pie', autopct='%1.1f%%', startangle=90, cmap='tab20')
    plt.title('Distribution of Main Product Categories')
    plt.ylabel('') 
    plt.tight_layout()
    image_path = os.path.join('static', 'most_common_categories.png')
    plt.savefig(image_path)
    plt.close()
    return image_path

def rating_distribution_by_category(df_ur,df_pm):
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

    image_path = os.path.join('static', 'rating_distribution_by_category.png')
    plt.savefig(image_path)
    plt.close()
    return image_path

def avg_rating_per_product(df_pm):
    product_ratings = df_pm.groupby('parent_asin')['average_rating'].mean().sort_values(ascending=False)
    # Bar chart of average ratings for the top 20 products
    plt.figure(figsize=(12, 6))
    sns.barplot(x=product_ratings.head(20).index, y=product_ratings.head(20).values, color='purple')
    plt.xticks(rotation=45, ha='right')
    plt.xlabel('Product Asin')
    plt.ylabel('Average Rating')
    plt.title('Top 20 Products by Average Rating')
    plt.tight_layout()
    image_path = os.path.join('static', 'top20products.png')
    plt.savefig(image_path)
    plt.close()
    return image_path



@app.route('/user-reviews', methods=['GET'])
def user_reviews():
    review_df = load_data('data/test_user_reviews.csv')
    asin_list = review_df['parent_asin'].unique()

    return render_template('userReviews.html', asin_list=asin_list)

@app.route('/get-user-reviews-details', methods=['GET'])
def get_user_reviews_details():
    parent_asin = request.args.get('parent_asin')
    if not parent_asin:
        return jsonify({"error": "ASIN is required"}), 400
    
    parent_asin = parent_asin.strip() 

    product = metadata_df[metadata_df['parent_asin'] == parent_asin]

    images_str = product['images'].iloc[0] 
    images_list = json.loads(images_str)

    image = images_list[0]["large"]

    
    review = reviews_df[reviews_df['parent_asin'] == parent_asin]

    review_data = { 
        "title": review['title'].iloc[0],
        "text": review['text'].iloc[0],
        "rating": review['rating'].iloc[0].item(),
        "image_url": image,
    }
    return jsonify(review_data)

@app.route('/product-metadata',methods=['GET'])
def product_metadata():
    metadata_df = load_data('data/test_metadata.csv')
    asin_list = metadata_df['parent_asin'].unique()

    return render_template('productMetadata.html', asin_list=asin_list)


@app.route('/get-product-details', methods=['GET'])
def get_product_details():
    parent_asin = request.args.get('parent_asin')
    if not parent_asin:
        return jsonify({"error": "ASIN is required"}), 400
    
    parent_asin = parent_asin.strip() 
    
    product = metadata_df[metadata_df['parent_asin'] == parent_asin]

    images_str = product['images'].iloc[0] 
    images_list = json.loads(images_str)

    image = images_list[0]["large"]



    product_data = {
        "title": product['title'].iloc[0],
        "average_rating": product['average_rating'].iloc[0],
        "rating_number": product['rating_number'].iloc[0].item(),
        "details": product['details'].iloc[0],
        "store": product['store'].iloc[0],
        "categories": product['categories'].iloc[0],
        "image_url": image,
    }
    
    return jsonify(product_data)


@app.route('/user-reviews-visualization')
def user_reviews_visualization():

    plot_path_1 = review_trends_volume(reviews_df)
    plot_path_2 = review_trends_avgRating(reviews_df)
    return render_template('user_visualization.html', plot_url=[plot_path_1,plot_path_2])

@app.route('/product-metadata-visualization')
def product_metadata_visualization():
    plot_path_1 = products_price_distribution(metadata_df)
    plot_path_2 = most_common_categories(metadata_df)
    plot_path_3 = rating_distribution_by_category(reviews_df, metadata_df)
    plot_path_4 = avg_rating_per_product(metadata_df)
    return render_template('product_visualization.html', plot_url=[plot_path_1, plot_path_2, plot_path_3, plot_path_4])


@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)