Create database retail_sales_project;

Use retail_sales_project;

Create table if not exists Retail_sales(
Transactions_id int primary key not null,
Sale_date date,
Sale_time time,
Customer_id int,
Gender char(10),
Age int,
Category varchar(50),
Quantity int,
Price_per_unit float,
Cost_of_goods_sold float,
Total_sale float);

select * from Retail_sales limit 5;

select count(*) from Retail_sales;

Select count(distinct(Transactions_id)) from Retail_sales;

SELECT
    SUM(CASE WHEN Sale_date IS NULL THEN 1 ELSE 0 END) AS Sale_date_nulls,
    SUM(CASE WHEN Sale_time IS NULL THEN 1 ELSE 0 END) AS Sale_time_nulls,
    SUM(CASE WHEN Customer_id IS NULL THEN 1 ELSE 0 END) AS Customer_id_nulls,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_nulls,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_nulls,
    SUM(CASE WHEN Category IS NULL THEN 1 ELSE 0 END) AS Category_nulls,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Quantity_nulls,
    SUM(CASE WHEN Price_per_unit IS NULL THEN 1 ELSE 0 END) AS Price_per_unit_nulls,
    SUM(CASE WHEN Cost_of_goods_sold IS NULL THEN 1 ELSE 0 END) AS COGS_nulls,
    SUM(CASE WHEN Total_sale IS NULL THEN 1 ELSE 0 END) AS Total_sale_nulls
FROM Retail_sales;


Select count(distinct(Customer_id)) from Retail_sales;

Select count(distinct(Category)) from Retail_sales;

Select * from Retail_sales
where Sale_date ='2022-11-05';

Select * from Retail_sales
where Category ='Clothing'  And Year(Sale_date) ='2022' And Month(Sale_date) ='11' And Quantity>=4;

Select Category, sum(Total_sale) from Retail_sales
Group by Category;

Select avg(age) from Retail_sales
where Category ='Beauty';

Select * from Retail_sales
where Total_sale>1000;

Select Gender, count(Transactions_id) from Retail_sales
Group by Gender;

Select year, month_name, avg_sale, rank() over(partition by year order by avg_sale desc) as sales_rank
From (SELECT YEAR(sale_date) AS year, MONTHNAME(sale_date) AS month_name, AVG(total_sale) AS avg_sale FROM Retail_sales
GROUP BY YEAR(sale_date), MONTHNAME(sale_date)) as new_data;

Select Customer_id, sum(Total_sale) as total_sales from retail_sales
group by Customer_id order by total_sales desc limit 5;

select Category, count(distinct(Customer_id)) from retail_sales group by Category;

Select count(*) as No_of_orders,
case
    WHEN hour(Sale_time)<=12 THEN "Morning"
    WHEN Hour(Sale_time)>12 and Hour(Sale_time)<17 THEN "Afternoon"
    ELSE "Evening"
End as order_details
From retail_sales
Group by order_details;

