# 🍕 Pizza Sales Analysis

## 📌 Project Overview
End-to-end analysis of a pizza restaurant's sales data using SQL for 
querying and Excel for building an interactive KPI dashboard. The goal 
was to identify revenue drivers, ordering patterns, and best/worst 
performing products.

## 🗂️ Repository Structure
- `/docs` – Documentation, data dictionary, SQL query reference
- `/data` – Raw dataset (pizza_sales)
- `/dashboard` – Excel dashboard file
- (adjust to match your actual folders)

## 🎯 Key Metrics (KPIs)
- **Total Revenue:** $817,860
- **Total Orders:** 21,350
- **Total Pizzas Sold:** 49,574
- **Average Order Value:** $38.31
- **Average Pizzas per Order:** 2.32

## 🔍 Key Insights
- Orders peak on **weekends (Fri/Sat evenings)**.
- Busiest hours are **12–1 PM** and **5–8 PM**.
- **Classic** category drives the most sales and orders.
- **Large** pizzas contribute the most revenue.
- Best seller: **The Classic Deluxe Pizza** | Worst: **The Brie Carre Pizza**

## 🛠️ Tools Used
- **SQL** (T-SQL / SQL Server) – data extraction & analysis
- **Microsoft Excel** – dashboard, charts, slicers

## 📊 Dashboard Preview
![Dashboard](path/to/dashboard-screenshot.png)

## 📑 Data Dictionary
| Column          | Description                          |
|-----------------|--------------------------------------|
| order_id        | Unique identifier for each order     |
| order_date      | Date the order was placed            |
| order_time      | Time the order was placed            |
| pizza_name      | Name of the pizza                    |
| pizza_category  | Category (Classic, Veggie, etc.)     |
| pizza_size      | Size (S, M, L, XL, XXL)              |
| quantity        | Number of pizzas                     |
| total_price     | Total price for the line item        |

## 📝 SQL Queries
See [`Pizza KPIs.docx`](./Pizza%20KPIs.docx) for the full query reference.