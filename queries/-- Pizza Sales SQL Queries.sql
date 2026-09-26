-- Pizza Sales SQL Queries
--A. KPIs for Pizza Sales

-- 1. Calculate the total revenue generated from pizza sales.
SELECT SUM(total_price) 
AS Total_Revenue 
FROM pizza_sales;


-- 2. Average order value (AOV) for pizza sales.
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) 
AS Avg_order_Value 
FROM pizza_sales;


--3. Total number of pizzas sold.
SELECT SUM(quantity) 
AS Total_pizza_sold 
FROM pizza_sales


--4. Total number of unique orders placed.
SELECT COUNT(DISTINCT order_id) 
AS Total_Orders 
FROM pizza_sales


--5. Average number of pizzas per order.
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales


--6. Daily trend of orders placed.
SELECT DATENAME(DW, order_date) AS order_day, 
COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)


-- 7. Hourly number of orders placed.
SELECT DATEPART(HOUR, order_time) as order_hours, 
COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by DATEPART(HOUR, order_time)
order by DATEPART(HOUR, order_time)


-- 8. Total revenue and percentage contribution by pizza category.
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) 
AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category


-- 9. Total revenue and percentage contribution by pizza size.
SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) 
from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size


--10. Total quantity of pizzas sold by category for the month of February.
SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC


--11. Top 5 pizzas by quantity sold.
SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC


--12. Bottom 5 pizzas by quantity sold.
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;


