# 🛒 Retail Sales Analysis using MySQL

## 📌 Project Overview
This project focuses on analyzing retail sales data using **MySQL** to derive meaningful business insights. The analysis covers customer behavior, sales performance, category-wise trends, time-based ordering patterns, and revenue distribution.

The goal of this project is to demonstrate strong SQL fundamentals including **database design, data exploration, aggregation, filtering, window functions, and business-oriented queries**.

---

## 🧰 Tools & Technologies
- **Database:** MySQL
- **Language:** SQL
- **Concepts Used:**  
  - DDL & DML  
  - Aggregate Functions  
  - GROUP BY & HAVING  
  - CASE Statements  
  - Date & Time Functions  
  - Window Functions (`RANK()`)  

---

## 🗄️ Database Schema

**Table Name:** `Retail_sales`

| Column Name            | Data Type       |
|------------------------|----------------|
| Transactions_id        | INT (Primary Key) |
| Sale_date              | DATE           |
| Sale_time              | TIME           |
| Customer_id            | INT            |
| Gender                 | CHAR(10)       |
| Age                    | INT            |
| Category               | VARCHAR(50)    |
| Quantity               | INT            |
| Price_per_unit         | FLOAT          |
| Cost_of_goods_sold     | FLOAT          |
| Total_sale             | FLOAT          |

---

## 🔍 Key Analyses Performed

### 📊 Data Exploration
- Total number of transactions
- Unique customers and product categories
- Sample data preview
- Null value analysis for data quality checks

### 🧠 Business Insights
- Category-wise total sales
- Average customer age per category
- High-value transactions analysis
- Gender-based purchase behavior
- Top 5 customers by total sales
- Unique customer count per category

### ⏰ Time-Based Analysis
- Sales analysis by specific date
- Monthly sales performance
- Order distribution by time of day (Morning / Afternoon / Evening)

### 🪟 Advanced SQL
- Ranking months by average sales using `RANK()` window function

---

## 📈 Sample Insights
- Identified top-performing product categories
- Found peak ordering times during the day
- Ranked months based on average revenue
- Analyzed customer purchasing power

---

## 🚀 How to Run This Project
1. Open **MySQL Workbench**
2. Create the database:
   ```sql
   CREATE DATABASE retail_sales_project;
   USE retail_sales_project;
3. Create the table and insert data
4. Run analysis queries from the SQL file
