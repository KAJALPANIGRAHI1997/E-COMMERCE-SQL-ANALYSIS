-- =========================================
-- Project: Ecommerce Data Cleaning & Analysis
-- Author: Kajal Panigrahi
-- Purpose: Clean raw ecommerce CSV data & analyze monthly revenue and order volume
-- Date: YYYY-MM-DD
-- =========================================
-- 0️ CREATE DATABASE & SELECT IT
CREATE DATABASE IF NOT EXISTS ecommerce_project;
USE ecommerce_project;

-- 1️⃣ CREATE RAW TABLE STRUCTURE
DROP TABLE IF EXISTS ecommerce_data;

CREATE TABLE ecommerce_data (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATE,
    UnitPrice DECIMAL(10,2),
    CustomerID VARCHAR(20),
    Country VARCHAR(50)
);
select * FROM ecommerce_data;

ALTER TABLE ecommerce_data
ADD amount DECIMAL(10,2);

-- 1️⃣ Ensure 'amount' is calculated (UnitPrice * Quantity)
UPDATE ecommerce_data
SET amount = UnitPrice * Quantity;
SHOW COLUMNS FROM ecommerce_data;

-- 2️⃣ Query to group by Month & Year and calculate metrics
SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce_data
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY order_year, order_month;

SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce_data
WHERE InvoiceDate BETWEEN '2010-12-01' AND '2011-12-31'
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY order_year, order_month;

