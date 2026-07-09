#  E-Commerce SQL Queries & Power BI Dashboard

This project demonstrates data analysis and interactive reporting using a 1,000-record e-commerce sales dataset. I wrote clean scripts in MySQL to aggregate and filter the data, then connected the database to Power BI to create business visualizations.

---

## Phase 1: SQL Data Practice
I used the `ecommerce_sales` table inside MySQL to practice core database metrics:

* **Aggregations & Grouping:** Used `SUM()`, `AVG()`, and `COUNT()` with `GROUP BY Category` to calculate total revenue, units sold, and average pricing patterns.
* **Date Manipulation:** Used `MONTHNAME()` to extract calendar months and `DATEDIFF()` to calculate dynamic time differences.
* **Duplicate Audits:** Used `HAVING COUNT(*) > 1` to locate duplicate product transactions across cities.
* **Subqueries:** Built conditional nested queries to isolate items priced above the global store average.
* **Set Operations:** Practiced `UNION` and `UNION ALL` to isolate unique and combined lists of active target cities.

---

##  Phase 2: Power BI Dashboard Visuals
I brought the MySQL data directly into Power BI Desktop and built the following visuals:

1. **Category Performance (Bar Chart):** Shows total revenue distributed across product categories.
2. **Monthly Trends (Column Chart):** Tracks seasonal revenue shifts month-by-month.
3. **Interactive Timeline (Date Slicer):** Allows dynamic date filtering between periods.
4. **High-Value Items (Filtered Table):** Replicates the SQL subquery logic to isolate premium products using custom DAX logic.

### Core DAX Measures Used:
* **Total Transactions:** `COUNT(ecommerce_sales[Order_ID])`
* **Total Units Sold:** `SUM(ecommerce_sales[Quantity])`
* **Total Revenue:** `SUMX(ecommerce_sales, ecommerce_sales[Quantity] * ecommerce_sales[Price])`
