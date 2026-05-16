import os
import pg8000
import sqlalchemy
import pandas as pd
import streamlit as st
from operator import add
from sqlalchemy import text
from dotenv import load_dotenv
from langchain_groq import ChatGroq
from langchain_community.vectorstores import FAISS
from langgraph.graph import END, StateGraph, START

from langchain_core.prompts import ChatPromptTemplate
from langchain_huggingface import HuggingFaceEmbeddings
from google.cloud.sql.connector import Connector, IPTypes
from langchain_community.document_loaders import DataFrameLoader
from langchain.chains.combine_documents import create_stuff_documents_chain
from langchain.chains import create_retrieval_chain


load_dotenv()


## load the API Keys
os.environ['HF_TOKEN']=os.getenv("HF_TOKEN")
os.environ['GROQ_API_KEY']=os.getenv("GROQ_API_KEY")


## Postgres DB
instance_connection_name = os.getenv("INSTANCE_CONNECTION_NAME")
db_user = os.getenv("DB_USER")  
db_pass = os.getenv("DB_PASS")  
db_name = os.getenv("DB_NAME")  


def connect_with_db() -> sqlalchemy.engine.base.Engine:
    ip_type = IPTypes.PRIVATE if os.getenv("PRIVATE_IP") else IPTypes.PUBLIC
    connector = Connector()
    def getconn() -> pg8000.dbapi.Connection:
        conn: pg8000.dbapi.Connection = connector.connect(
            instance_connection_name,
            "pg8000",
            user=db_user,
            password=db_pass,
            db=db_name,
            ip_type=ip_type,
        )
        return conn
    pool = sqlalchemy.create_engine(
        "postgresql+pg8000://",
        creator=getconn,
    )
    return pool


def get_best_product(item):
    engine = connect_with_db()
    query = text(f"""
    SELECT title, parent_asin
    FROM metadata
    WHERE title ILIKE '%{item}%'
    ORDER BY average_rating DESC
    LIMIT 5;
                """)
    with engine.begin() as connection:
        try:
            result = connection.execute(query)
            result_df = pd.DataFrame(result.fetchall(), columns=result.keys())
            return result_df
        except Exception as e: print(e)

def get_review_data(parent_asin):
    engine = connect_with_db()
    query = text(f"""
    SELECT *
    FROM user_reviews
    WHERE parent_asin = '{parent_asin}'
                """)
    with engine.begin() as connection:
        try:
            result = connection.execute(query)
            result_df = pd.DataFrame(result.fetchall(), columns=result.keys())
            return result_df
        except Exception as e: print(e)


def get_meta_data(parent_asin):
    engine = connect_with_db()
    query = text(f"""
    SELECT *
    FROM productmetadata
    WHERE parent_asin = '{parent_asin}'
    LIMIT 1
                """)
    with engine.begin() as connection:
        try:
            result = connection.execute(query)
            result_df = pd.DataFrame(result.fetchall(), columns=result.keys())
            return result_df
        except Exception as e: print(e)

llm = ChatGroq(model_name="llama-3.1-70b-versatile") 

st.set_page_config(page_title="VaultBot", page_icon="📖")
st.title("VaultBot")
st.subheader("Your Intelligent eCommerce Companion")

if "messages" not in st.session_state:
    st.session_state["messages"] = []

item = st.text_input("Search for item")
placeholder = st.empty()
if item:
    items_df = get_best_product(item)
    if not items_df.empty:
        if "clicked_asin" not in st.session_state:
            st.session_state.clicked_asin = None
        with placeholder.container():
            st.write(f"Top 5 products are:")
            for _, row in items_df.iterrows():
                title = row['title']
                parent_asin = row['parent_asin']
                
                if st.button(f"{title}", key=parent_asin):
                        st.session_state.clicked_asin = parent_asin 

        if st.session_state.clicked_asin is not None:
            placeholder.empty()
            user_input = st.text_input("Your question:")
            if user_input:
                parent_asin = st.session_state.clicked_asin
                meta_data = get_meta_data(parent_asin)
                review_data = get_review_data(parent_asin)

                loader_review = DataFrameLoader(review_data)
                review_docs = loader_review.load()

                embeddings = HuggingFaceEmbeddings(model_name="all-MiniLM-L6-v2")
                

                vectordb_review = FAISS.from_documents(documents=review_docs, embedding=embeddings)
                retriever_review = vectordb_review.as_retriever()



                

                system_prompt = (
                f'''
                You are VaultBot, a highly knowledgeable and efficient chatbot assistant designed to help users with questions related to products.
                Your primary role is to assist users by providing concise, accurate, and insightful responses based on the product information and reviews available to you.
                If you don’t have the necessary information to answer the question, simply say that you don’t know.
                
                When a User (Shopper) comes to you for help, the question might have first been routed through either the Metadata or the Review-Vectorstore. 

                Your primary objective is to offer clear, concise, and helpful advice to the teacher, ensuring that they receive the most accurate and useful information to support their shopping needs.

                Instructions:
                - Analyze the product information and/or reviews provided.
                - Provide brief, clear, and helpful answers to user queries about the product.
                - Focus on delivering concise and actionable insights to help users make informed decisions.

                Below is the context for you to use:
                '''
                "{context}"
                )

                qa_prompt = ChatPromptTemplate.from_messages(
                [
                    ("system", system_prompt),
                    ("human", "{input}")
                ]
                )

                question_answer_chain = create_stuff_documents_chain(llm, qa_prompt)
                rag_chain = create_retrieval_chain(retriever_review, question_answer_chain)

                response = rag_chain.invoke({"input": user_input})
                st.write(response['answer'])
    else:
        st.warning("No products found. Please try another search.")


