# 🍕 Pizza Sales Analysis (SQL Project)

An end-to-end data analysis project exploring pizza sales performance using SQL. This project answers key business questions around revenue, order trends, customer behavior, and product performance — turning raw sales data into actionable insights.

<!-- ⚠️ Replace the path below with your actual dashboard image -->
![Pizza Sales Dashboard](visuals/01_Pizza%20Sales%20Dashboard/Dashboard.png)

---

## 📌 Project Overview

The goal of this project is to analyze a pizza restaurant's sales data to help stakeholders understand **how the business is performing** and **where opportunities lie**. Using SQL, I calculated core KPIs and uncovered trends across time, category, and size to support data-driven decisions.

---

## 🎯 Business Questions Answered

**KPIs**
- What is the total revenue, and what's the average order value?
- How many pizzas were sold and how many orders were placed?
- What is the average number of pizzas per order?

**Trends**
- What are the daily and hourly trends for orders placed?

**Sales Performance**
- What percentage of sales comes from each pizza category and size?
- How many pizzas are sold per category?

**Product Performance**
- Which are the top 5 best-selling pizzas?
- Which are the bottom 5 worst-selling pizzas?

---

## 🛠️ Tools & Technologies

<!-- ⚠️ Update to match what you actually used -->
- **SQL** (Microsoft SQL Server / T-SQL)
- **Data Visualization** — (Power BI / Excel / etc.)
- **Dataset** — Pizza sales transactional data (`data/Pizza_Dataset.csv`)

---

## 📊 Key Insights

<!-- ⚠️ Replace these with YOUR actual findings — these are examples -->
- 💰 **Total Revenue:** ~$817K generated over the analysis period.
- 🧾 **Average Order Value:** ~$38.31, with an average of ~2.3 pizzas per order.
- 📈 **Peak Times:** Orders peak on **Fridays and weekends**, and during **lunch (12–1 PM)** and **dinner (5–7 PM)** hours.
- 🍕 **Top Category:** **Classic** pizzas drive the most revenue (~26%) and highest quantity sold.
- 📏 **Top Size:** **Large** pizzas are the most popular, contributing the largest share of sales.
- 🏆 **Best Seller:** The Thai Chicken Pizza generated the most revenue; **The Brie Carre** sold the least.

---

## 📁 Repository Structure

```
├── data/
│   └── Pizza_Dataset.csv              # Raw sales dataset
│
├── docs/
│   ├── Pizza KPIs.md                  # KPI queries with output screenshots
│   └── README.md
│
├── queries/
│   └── pizza_sales_queries.sql        # All SQL queries
│
├── reports/
│   ├── Pizza Sales Report.md          # Detailed analysis & findings
│   └── README.md
│
├── visuals/
│   ├── 01_Pizza Sales Dashboard/      # Final dashboard
│   ├── 02_Trends of Total Order/      # Daily & hourly trend charts
│   ├── 03_Percentage of Sales/        # Category & size breakdowns
│   ├── 04_Best and Worst Sellers/     # Top & bottom performers
│   └── 05_SQL Query Execution/        # Screenshots of query outputs
│
└── README.md                          # You are here
```

---

## 🚀 How to Use This Repository

1. **Explore the data** — start with `data/Pizza_Dataset.csv`.
2. **Review the queries** — all SQL logic lives in `queries/pizza_sales_queries.sql`.
3. **See the results** — the `visuals/` folder contains all charts and query outputs.
4. **Read the analysis** — `reports/Pizza Sales Report.md` walks through the full findings.

---

## 📈 Sample Visuals

| Analysis | Preview |
|----------|---------|
| Daily Order Trends | ![Daily Trends](visuals/05_SQL%20Query%20Execution/Daily%20Trends%20of%20Orders%20Placed.png) |
| Hourly Order Trends | ![Hourly Trends](visuals/05_SQL%20Query%20Execution/Hourly%20number%20of%20orders%20placed.png) |
| Top 5 Best Sellers | ![Top 5](visuals/04_Best%20and%20Worst%20Sellers/Top%205%20Best%20Sellers%20by%20Total%20Pizzas%20Sold.png) |
| Bottom 5 Worst Sellers | ![Bottom 5](visuals/04_Best%20and%20Worst%20Sellers/Bottom%205%20Worst%20Sellers%20by%20Total%20Pizzas%20Sold.png) |

---

## 🧠 What I Learned

- Writing complex SQL queries using aggregations, `GROUP BY`, subqueries, and date functions.
- Translating business questions into measurable KPIs.
- Communicating insights clearly through visualizations and documentation.

---

## 📬 Contact

<!-- ⚠️ Add your details -->
**[Your Name]**
- LinkedIn: [your-linkedin-url]
- Email: your.email@example.com