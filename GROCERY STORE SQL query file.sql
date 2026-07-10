create database grocery;
use grocery;

select * from categories;
select * from customers;
select * from products;
select * from orders;
select * from orderdetails;
select * from store_employees;
select * from suppliers;
  


#1# How many unique customers have placed orders?
select count(CustomerID) from customers;

#2#What is the relationship between quantity ordered and total price?
SELECT Quantity, priceEach, (Quantity * priceEach) AS total_price
FROM orderdetails;

#3#What is the average quantity ordered per product?
select ProductId, Avg(Quantity) as avg_quantity from orderdetails
group by ProductId;


#4#How many suppliers are there in the database?
SELECT COUNT(*) AS total_suppliers
FROM suppliers;

#5# How many orders have been placed in total?
SELECT COUNT(*) AS total_orders
FROM orders;

#6# How many products exist in each category?
SELECT CategoryID, COUNT(*) AS total_products
FROM products
GROUP BY CategoryID;

#7# What is the average price of products from each supplier?
SELECT SupplierID, AVG(price) AS avg_price
FROM products
GROUP BY SupplierID;

#8# How many employees have processed orders?
SELECT COUNT(DISTINCT EmployeeID) AS Total_Employees
FROM orders;

#9#What is the average price of products by category?
select c.CategoryID,CategoryName,avg(price) as Average from categories c
join products p
on c.CategoryID=p.CategoryID
group by c.CategoryID,CategoryName;

#10#What is the average value per order?          
select orderID,avg(TotalPrice) as AVG_Value from orderdetails
group by orderID; 




