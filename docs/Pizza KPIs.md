# Pizza Sales SQL Queries

## A. KPIs

### 1. Total Revenue

```sql
SELECT SUM(total_price) AS Total_Revenue
FROM pizza_sales;
```

![Total Revenue](../visuals/05_SQL%20Query%20Execution/Total%20Revenue.png)

### 2. Average Order Value

```sql
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value
FROM pizza_sales;
```

![Average Order Value](../visuals/05_SQL%20Query%20Execution/Average%20Order%20Value.png)

### 3. Total Pizzas Sold

```sql
SELECT SUM(quantity) AS Total_pizza_sold
FROM pizza_sales;
```

![Total Pizzas Sold](../visuals/05_SQL%20Query%20Execution/Total%20Pizza%20Sold.png)

### 4. Total Orders

```sql
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales;
```

![Total Orders](../visuals/05_SQL%20Query%20Execution/Total%20Pizza%20Order.png)

### 5. Average Pizzas Per Order

```sql
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
       CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
       AS Avg_Pizzas_per_order
FROM pizza_sales;
```

![Average Pizzas Per Order](../visuals/05_SQL%20Query%20Execution/Average%20Pizza%20Order.png)

---

## B. Daily Trend for Total Orders

```sql
SELECT DATENAME(DW, order_date) AS order_day,
       COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);
```

![Daily Trend for Total Orders](../visuals/05_SQL%20Query%20Execution/Daily%20Trends%20of%20Orders%20Placed.png)

---

## C. Hourly Trend for Orders

```sql
SELECT DATEPART(HOUR, order_time) AS order_hours,
       COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);
```

![Hourly Trend for Orders](../visuals/05_SQL%20Query%20Execution/Hourly%20number%20of%20orders%20placed.png)

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

![% of Sales by Pizza Category](../visuals/05_SQL%20Query%20Execution/Total%20revenue%20and%20percentage%20contribution%20by%20pizza%20category.png)

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

![% of Sales by Pizza Size](../visuals/05_SQL%20Query%20Execution/Total%20revenue%20and%20percentage%20contribution%20by%20pizza%20size.png)

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

![Total Pizzas Sold by Pizza Category](../visuals/05_SQL%20Query%20Execution/Total%20quantity%20of%20pizzas%20sold%20by%20category%20for%20the%20month%20of%20February.png)

---

## G. Top 5 Best Sellers by Total Pizzas Sold

```sql
SELECT TOP 5 pizza_name,
       SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC;
```

![Top 5 Best Sellers](../visuals/05_SQL%20Query%20Execution/Top%205%20pizzas%20by%20quantity%20sold.png)

---

## H. Bottom 5 Worst Sellers by Total Pizzas Sold

```sql
SELECT TOP 5 pizza_name,
       SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;
```

![Bottom 5 Worst Sellers](../visuals/05_SQL%20Query%20Execution/Bottom%205%20pizzas%20by%20quantity%20sold.png)