use project;
show tables;
select * from ecommerce_sales;
SELECT 
    Category,
    COUNT(Order_ID) AS Total_Transactions,
    SUM(Quantity) AS Total_Units_Sold,
    AVG(Price) AS Avg_Unit_Price,
    SUM(Quantity * Price) AS Total_Revenue
FROM ecommerce_sales
GROUP BY Category
HAVING Total_Units_Sold > 2
ORDER BY Total_Revenue DESC;

SELECT 
Order_ID,
Date,
MONTHNAME(Date) AS Month_Name,
DATEDIFF('2026-07-09', Date) AS Days_Since_Order
FROM ecommerce_sales
WHERE Date BETWEEN '2026-01-01' AND '2026-04-30';

SELECT Product, Price, Quantity, City, Date, COUNT(*) AS Duplicate_Count
FROM ecommerce_sales
GROUP BY Product, Price, Quantity, City,Date
HAVING COUNT(*) > 1;
select * from ecommerce_sales;

SELECT Order_ID, Product, Price 
FROM ecommerce_sales 
WHERE Price > (SELECT AVG(Price) FROM ecommerce_sales);

SELECT Order_ID, Product, Category, Price
FROM ecommerce_sales
WHERE Category IN (
SELECT Category FROM ecommerce_sales WHERE Price = (SELECT MAX(Price) FROM ecommerce_sales)
);

SELECT City FROM ecommerce_sales WHERE Category = 'Electronics'
UNION
SELECT City FROM ecommerce_sales WHERE Category = 'Accessories';
SELECT City FROM ecommerce_sales WHERE Category = 'Electronics'
UNION ALL
SELECT City FROM ecommerce_sales WHERE Category = 'Accessories';


