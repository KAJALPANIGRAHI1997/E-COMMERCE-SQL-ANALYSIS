# E-COMMERCE-SQL-ANALYSIS
SQL-based analysis of an e-commerce dataset. Includes raw dataset and SQL queries for extracting month/year from order dates, grouping sales by month, calculating total revenue, counting unique orders, sorting by date, and filtering by custom date ranges.
## 📌 Overview
This repository contains:
- **Dataset:** `Ecommerce_Data.csv`
- **SQL Script:** `ecommerce_analysis.sql`

The SQL file includes step-by-step queries to:
1. Extract **month** and **year** from `InvoiceDate`
2. Group sales data by **month/year**
3. Calculate **total revenue** using `SUM(amount)`
4. Count **unique orders** with `COUNT(DISTINCT InvoiceNo)`
5. Sort results **chronologically**
6. Optionally **filter results** by a specific date range

---

## 📂 Files in this Repository
- **`Ecommerce_Data.csv`** → Original dataset used for analysis.
- **`ecommerce_analysis.sql`** → SQL queries for analysis.

---

## 🛠 SQL Features Covered
- `YEAR()` and `MONTH()` functions
- `SUM()` aggregation
- `COUNT(DISTINCT ...)`
- `GROUP BY` and `ORDER BY`
- `WHERE` with `BETWEEN` for date filtering

---

## 📊 Example Query Output
| order_year | order_month | total_revenue | total_orders |
|------------|-------------|---------------|--------------|
| 2010       | 12          | 15000.50      | 120          |
| 2011       | 1           | 20000.75      | 135          |

---

## 🚀 How to Use
1. Import the dataset into your SQL database.
2. Run the queries in `ecommerce_analysis.sql` step-by-step.
3. Adjust the `WHERE` clause to analyze specific date ranges.

---

## 📄 License
This project is open-source and free to use for learning and analysis.
