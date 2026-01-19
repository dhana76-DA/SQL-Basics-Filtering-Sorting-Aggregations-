# SQL-Basics-Filtering-Sorting-Aggregations-

In this first download the Chinook Database from the Kaggle and the link is here  https://www.kaggle.com/datasets/ranasabrii/chinook/data

Next install the MySQL form the official website of SQL and link https://dev.mysql.com/downloads/installer/
 Make the settings of the MySQL of custom, add work bench, shell, server of the SQL next give all the settings to configure and install the SQL.

To import the data in the MySQL we need to create a database in the MySQL workbench in that we need to open the database, then tables, right click on it then import table data wizard and select the path of the csv file C:\Users\sampa\OneDrive\Desktop\Elevate Labs\SQL Task\Sample - Superstore.csv path and then check all the data is imported correctly or not. 

Project Overview

This project demonstrates the use of basic SQL operations on the Superstore dataset.
The main focus is on:

Data loading into MySQL

Filtering data using WHERE

Sorting data using ORDER BY

Finding top sales items using SQL queries

This work helps in understanding how SQL can be used for data analysis in retail business scenarios.

🛠 Tools and Technologies Used

Database: MySQL

Interface: MySQL Workbench / DB Fiddle

Dataset: Superstore Dataset (CSV)

Language: SQL

📂 Dataset Description

The Superstore dataset contains sales records of a retail store.
It includes information about:

Orders

Customers

Products

Sales, profit, and discounts

Key Columns Used:

Order_ID

Order_Date

Customer_Name

Category

Sub_Category

Product_Name

Sales

Profit

Region

🗄️ Database Creation

A new database was created in MySQL to store the Superstore data.

CREATE DATABASE chinook.`sample - superstore`;
USE chinook.`sample - superstore`;

🧱 Table Creation

A table named superstore was created with appropriate data types.

CREATE TABLE superstore (
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(20),
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Region VARCHAR(50),
    Product_ID VARCHAR(20),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(150),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2)
);

📥 Data Import

The Superstore CSV file was imported into MySQL using:

MySQL Workbench → Table Data Import Wizard

The data was successfully loaded into the superstore table.

🔍 SQL Operations Performed
Select statements used for the dataset:
After connecting the database, the first command write is SELECT * FROM ; it has shown all the data in the sample superstore data.

SELECT * FROM chinook.`sample - superstore`; To check all the dataset in the and columns.

SELECT  City, Region, Segment
FROM chinook.`sample - superstore`; To check the City, Region, Segment details of the data.

SELECT Country, Category 
FROM chinook.`sample - superstore`;  To check the Country, Category details of the data.

1️⃣ Filtering Data using WHERE

Filtered products belonging to the Technology category.

SELECT *
FROM 
WHERE Category = 'Technology';

2️⃣ Sorting Data using ORDER BY

Sorted products based on sales in descending order.

SELECT Product_Name, Sales
FROM chinook.`sample - superstore`
WHERE Category = 'Technology'
ORDER BY Sales DESC;

3️⃣ Finding Top Sales Items

Identified the top 5 selling Technology products.

SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM chinook.`sample - superstore`
WHERE Category = 'Technology'
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

📈 Results and Observations

Technology products contribute significantly to total sales.

A small number of products generate higher sales compared to others.

SQL filtering and sorting help in identifying top-performing products quickly.

✅ Conclusion

This project successfully demonstrates how SQL can be used to:

Store retail data in a relational database

Filter and sort records efficiently

Analyze sales performance using simple SQL queries

Analyze monthly sales

Implement queries in PostgreSQL


Results Table (for README): | Category | Total Revenue | Transaction Count | |3  | $2,272,448| 9694| | Technology | $836,154.03 | 1,847 | | Furniture | $742,000.27 | 2,121 | | Office Supplies | $719,047.03 | 6,026 |


In this the highest category has the Technology and where the lowest has the office supplies. 
