# Pizza Sales SQL Queries

## A. KPIs

### 1. Total Revenue

```sql
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;
```

*[Output image here]*

### 2. Average Order Value

```sql
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value
FROM pizza_sales;
```

*[Output image here]*

### 3. Total Pizzas Sold

```sql
SELECT SUM(quantity) AS Total_pizza_sold
FROM pizza_sales;
```

*[Output image here]*

### 4. Total Orders

```sql
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;
```

*[Output image here]*

### 5. Average Pizzas Per Order

```sql
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
       CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
       AS Avg_Pizzas_per_order
FROM pizza_sales;
```

*[Output image here]*

---

## B. Daily Trend for Total Orders

```sql
SELECT DATENAME(DW, order_date) AS order_day,
       COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);
```

*[Output image here]*

---

## C. Hourly Trend for Orders

```sql
SELECT DATEPART(HOUR, order_time) AS order_hours,
       COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);
```

*[Output image here]*

---

## D. % of Sales by Pizza Category

```sql
SELECT pizza_category,
       CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
       CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales)
            AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category;
```

*[Output image here]*

---

## E. % of Sales by Pizza Size

```sql
SELECT pizza_size,
       CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
       CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales)
            AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;
```

*[Output image here]*

---

## F. Total Pizzas Sold by Pizza Category

```sql
SELECT pizza_category,
       SUM(quantity) AS Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;
```

*[Output image here]*

---

## G. Top 5 Best Sellers by Total Pizzas Sold

```sql
SELECT TOP 5 pizza_name,
       SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC;
```

*[Output image here]*

---

## H. Bottom 5 Worst Sellers by Total Pizzas Sold

```sql
SELECT TOP 5 pizza_name,
       SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;
```

*[Output image here]*