-- E-Commerce Sales Analysis SQL Script

-- STEP 1: Extract month and year from InvoiceDate
SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month
FROM ecommerce_data;

-- STEP 2: Group the data by month/year
SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month
FROM ecommerce_data
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate);

-- STEP 3: Calculate total revenue using SUM(amount)
SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month,
    SUM(amount) AS total_revenue
FROM ecommerce_data
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate);

-- STEP 4: Count total number of orders using COUNT(DISTINCT InvoiceNo)
SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce_data
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate);

-- STEP 5: Sort results by date
SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce_data
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY order_year, order_month;

-- STEP 6: Optionally limit the time range
SELECT 
    YEAR(InvoiceDate) AS order_year,
    MONTH(InvoiceDate) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce_data
WHERE InvoiceDate BETWEEN '2010-12-01' AND '2011-12-31'
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY order_year, order_month;
