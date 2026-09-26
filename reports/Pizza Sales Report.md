# 🍕 Pizza Sales Analysis — Summary Report

**Name:** Bhatti Prabhpreet Singh
**Tools:** SQL (data querying & KPIs), Excel (pivot tables & dashboard)
**Dataset:** `pizza_sales` — 48,620+ line-item records of individual pizza orders

---

## 1. Executive Summary

This project analyzes a full year of pizza sales to understand overall business performance, customer ordering behaviors, and product popularity. Using SQL to calculate key metrics and Excel to visualize trends, the analysis surfaces clear opportunities to increase revenue through menu optimization, staffing alignment, and targeted promotions.

**Headline results:**

| KPI | Value |
|-----|-------|
| Total Revenue | $817,860 |
| Total Orders | 21,350 |
| Total Pizzas Sold | 49,574 |
| Average Order Value | $38.31 |
| Average Pizzas per Order | 2.32 |

---

## 2. Objectives

The analysis set out to answer five core business questions:

1. How is the business performing overall (revenue, orders, volume)?
2. When are customers ordering — by day of week and by hour?
3. Which pizza categories and sizes drive the most revenue?
4. What are the best-selling and worst-selling pizzas?
5. Where are the biggest opportunities to grow revenue?

---

## 3. Methodology

- **Data extraction & KPIs:** Wrote SQL queries against the `pizza_sales` table to calculate revenue, order counts, volume, and trend breakdowns (daily, hourly, by category, by size).
- **Aggregation:** Grouped data by time dimensions and product attributes to identify patterns.
- **Visualization:** Built pivot tables and an interactive dashboard in Excel to present the findings visually.

---

## 4. Key Findings & Insights

### 4.1 Sales by Day of Week

| Day | Orders |
|-----|--------|
| **Friday (highest)** | 2,462 |
| Saturday | 2,170 |
| Thursday | 2,103 |
| Monday | 2,059 |
| Wednesday | 2,012 |
| Tuesday | 1,962 |
| **Sunday (lowest)** | 1,803 |

![Daily Trend for Total Orders](../visuals/02_Trends%20of%20Total%20Order/Daily%20Trend%20for%20Total%20Orders.png)

> **Insight:** Orders increase toward the end of the week, with Friday recording the highest volume (2,462 orders). Thursday through Saturday form the strongest sales period, while Sunday has the lowest order volume (1,803 orders). This indicates customer demand is highest leading into the weekend, suggesting opportunities for targeted promotions and staffing optimization during peak periods.

### 4.2 Sales by Hour of Day

| Time | Orders |
|------|--------|
| 12 pm | 1,687 |
| 6 pm | 1,643 |
| 1 pm | 1,641 |
| 5 pm | 1,611 |
| 7 pm | 1,365 |
| 4 pm | 1,314 |

![Hourly Trend for Total Orders](../visuals/02_Trends%20of%20Total%20Order/Hourly%20Trend%20for%20Total%20Orders.png)

> **Insight:** Pizza sales are highest during lunch (12–1 PM) and dinner (5–7 PM), with these two periods generating most of the daily orders. Demand remains low during the early morning and late evening hours, highlighting the importance of staffing and inventory planning around peak mealtimes.

### 4.3 Revenue by Pizza Category

| Category | % of Revenue |
|----------|--------------|
| Classic | 26.9% |
| Supreme | 25.5% |
| Veggie | 23.9% |
| Chicken | 23.7% |

![% of Sales by Pizza Category](../visuals/03_Percentage%20of%20Sales/%25%20of%20Sales%20by%20Pizza%20Category.png)

> **Insight:** Revenue is well distributed across all four pizza categories, with the Classic category generating the highest sales. The relatively balanced revenue contribution suggests that customers enjoy a diverse range of products rather than relying heavily on a single category. This broad appeal helps create a more stable revenue stream and reduces dependence on any one product line.

### 4.4 Revenue by Pizza Size

| Size | % of Revenue |
|------|--------------|
| Large | 45.7% |
| Medium | 30.7% |
| Regular (Small) | 21.7% |
| X-Large | 1.8% |
| XX-Large | 0.1% |

![% of Sales by Pizza Size](../visuals/03_Percentage%20of%20Sales/%25%20of%20Sales%20by%20Pizza%20Size.png)

> **Insight:** Large pizzas are the strongest revenue-generating size, contributing nearly half of total sales. Combined with Medium pizzas, these sizes account for more than 76% of overall revenue, highlighting strong customer preference for mid-to-large portions. Meanwhile, X-Large and XX-Large pizzas have minimal revenue contribution and may warrant further evaluation to determine their strategic value on the menu.

### 4.5 Pizzas Sold by Category (Volume)

| Category | Pizzas Sold |
|----------|-------------|
| Classic | 10,061 |
| Supreme | 8,129 |
| Veggie | 7,958 |
| Chicken | 7,452 |

![Total Pizza Sold by Category](../visuals/03_Percentage%20of%20Sales/Total%20Pizza%20Sold%20by%20Categoty.png)

> **Insight:** Classic pizzas are the top-performing category, generating the highest revenue and sales volume. Their strong and consistent demand indicates they are a customer favorite and a major contributor to the business's overall success.

### 4.6 Top 5 Best-Selling Pizzas

| Rank | Pizza | Quantity Sold |
|------|-------|---------------|
| 1 | The Barbecue Chicken Pizza | 1,675 |
| 2 | The Pepperoni Pizza | 1,642 |
| 3 | The Classic Deluxe Pizza | 1,633 |
| 4 | The California Chicken Pizza | 1,615 |
| 5 | The Hawaiian Pizza | 1,602 |

![Top 5 Best Sellers](../visuals/04_Best%20and%20Worst%20Sellers/Top%205%20Best%20Sellers%20by%20Total%20Pizzas%20Sold.png)

### 4.7 Bottom 5 Worst-Selling Pizzas

| Rank | Pizza | Quantity Sold |
|------|-------|---------------|
| 1 | The Brie Carre Pizza | 330 |
| 2 | The Mediterranean Pizza | 621 |
| 3 | The Calabrese Pizza | 631 |
| 4 | The Spinach Pesto Pizza | 652 |
| 5 | The Chicken Pesto Pizza | 653 |

![Bottom 5 Worst Sellers](../visuals/04_Best%20and%20Worst%20Sellers/Bottom%205%20Worst%20Sellers%20by%20Total%20Pizzas%20Sold.png)

> **Insight:** Customer demand is concentrated around familiar and popular flavors such as BBQ Chicken, Pepperoni, and Hawaiian, which consistently rank among the top sellers. Specialty pizzas, particularly The Brie Carre Pizza, show significantly lower demand, with only 330 units sold. This difference highlights a clear preference for traditional menu items and may indicate an opportunity to reassess the positioning, pricing, or promotion of lower-performing specialty pizzas.

---

## 5. Recommendations

1. **Align staffing to demand peaks.** Schedule maximum staff for the lunch (12–1 pm) and dinner (5–7 pm) rushes, and on Thursday–Saturday, to reduce wait times and capture peak revenue.
2. **Boost slow periods with promotions.** Introduce Sunday deals or early-week ("Tuesday two-for-one") offers to lift the quietest days.
3. **Upsell Large pizzas.** Since Large drives ~46% of revenue, train staff to upsell to Large and create value bundles. Investigate why X-Large/XX-Large barely sell — consider repricing, better menu placement, or removing them.
4. **Feature best-sellers & re-evaluate underperformers.** Promote the top 5 in combos and featured spots. Review the Brie Carre and other bottom performers — either reposition/market them or consider retiring them to streamline operations.
5. **Protect the Classic category.** As the top performer in both revenue and volume, keep Classic pizzas prominent and well-stocked.

---

## 6. Conclusion

The pizzeria generated **$817,860** in revenue across **21,350 orders** in 2015, with a healthy average order value of **$38.31**. The business is weekend- and rush-hour driven, powered by Large pizzas and a balanced, broadly appealing menu led by Classic varieties. The clearest growth levers are demand-aligned staffing, promotions during slow periods, upselling larger sizes, and rationalizing underperforming menu items.