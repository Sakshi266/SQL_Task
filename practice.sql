-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS SalesDB;

-- Step 2: Use the Database
USE SalesDB;

-- Step 3: Create Sales Table
CREATE TABLE IF NOT EXISTS sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    sale_amount DECIMAL(10, 2),
    sale_date DATE
);

-- Step 4: Insert 30 rows of sample data
INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 1500.50, '2023-01-05'),
(2, 'T-Shirt', 'Clothing', 20.20, '2023-01-08'),
(3, 'Smartphone', 'Electronics', 800.75, '2023-01-12'),
(4, 'Jeans', 'Clothing', 55.40, '2023-01-18'),
(5, 'Headphones', 'Electronics', 90.90, '2023-02-05'),
(6, 'Sweater', 'Clothing', 35.60, '2023-02-08'),
(7, 'Tablet', 'Electronics', 300.45, '2023-03-10'),
(8, 'Shoes', 'Clothing', 65.30, '2023-03-15'),
(9, 'Digital Camera', 'Electronics', 450.20, '2023-04-02'),
(10, 'Watch', 'Clothing', 120.90, '2023-04-05'),
(11, 'Printer', 'Electronics', 250.00, '2023-05-01'),
(12, 'Backpack', 'Clothing', 45.20, '2023-05-05'),
(13, 'Digital Watch', 'Electronics', 120.60, '2023-05-10'),
(14, 'Sunglasses', 'Clothing', 30.30, '2023-06-02'),
(15, 'External Hard Drive', 'Electronics', 80.90, '2023-06-08'),
(16, 'Dress', 'Clothing', 65.60, '2023-06-15'),
(17, 'Fitness Tracker', 'Electronics', 90.25, '2023-07-01'),
(18, 'Handbag', 'Clothing', 55.40, '2023-07-05'),
(19, 'Wireless Mouse', 'Electronics', 25.60, '2023-07-10'),
(20, 'Hat', 'Clothing', 15.30, '2023-08-02'),
(21, 'Desktop Computer', 'Electronics', 1200.75, '2023-08-10'),
(22, 'Jacket', 'Clothing', 75.20, '2023-09-05'),
(23, 'Bluetooth Speaker', 'Electronics', 70.80, '2023-09-10'),
(24, 'Shorts', 'Clothing', 35.90, '2023-09-15'),
(25, 'E-reader', 'Electronics', 110.60, '2023-10-01'),
(26, 'Scarf', 'Clothing', 22.40, '2023-10-05'),
(27, 'Gaming Mouse', 'Electronics', 45.25, '2023-10-10'),
(28, 'Polo Shirt', 'Clothing', 28.40, '2023-11-01'),
(29, 'Wireless Keyboard', 'Electronics', 60.20, '2023-11-05'),
(30, 'Socks', 'Clothing', 8.90, '2023-11-10');

select * from sales;

-- 1-	What is the total sales amount for each category?
select category,sum(sale_amount) from sales
group by category;

-- 2-	Which categories have more than 10 sales?
select category,count(*) from sales
group by category
having count(*)  > 10;

-- 3-	What is the maximum sale amount in each category?
select category,max(sale_amount) from sales
group by category;


-- 4-	Which categories have an average sale amount below 50?
select category,avg(sale_amount) from sales
group by category
having avg(sale_amount)<50;


-- 5-	How many sales does each product have?
select product_name,count(*) from sales
group by  product_name;



-- 6-	Which products have more than 5 sales?
select product_name,count(*) from sales
group by product_name
having count(*) > 5;

-- 7-	What is the average sale amount for products with more than 2 sales?
select product_name, avg(sale_amount) from sales
group by product_name
having avg(sale_amount) > 2;

-- 8-	Which products have the highest sale amount above 100?
select product_name,max(sale_amount) from sales
group by product_name
having max(sale_amount) > 100;


-- 9-	Which product has the highest total sales amount?
select product_name,sum(sale_amount) from sales
group by product_name
limit 1;

-- 10-	Which categories have a total sales amount above 800?
select category, sum(sale_amount) from sales
group by category
having sum(sale_amount) > 800;


-- 11-	What is the average sale amount for each month?
select sale_date,avg(sale_amount) from sales
group by sale_date; 

-- 12-	What are the products with the highest sale amount in each category?
select category,max(sale_amount) from sales
group by category;


-- 13-	How many sales occurred for each month?
select sale_date,count(*) from sales
group by  sale_date ;

-- 14-	In which months are there more than 5 sales?
select product_name,count(sale_date) from sales
group by product_name
having count(sale_date) > 5;


-- 15-	What is the average sale amount for each product category in months with more than 3 sales?
select category, avg(sale_amount) from sales
group by category
having avg(sale_amount) >3;


