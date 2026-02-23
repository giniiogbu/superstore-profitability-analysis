/*
Superstore Profitability & Operational Analysis
Author: Ginikachi Ogbu
Database: MySQL
Description: Financial and operational analysis of retail superstore dataset.
*/


-- ==========================================
-- 1. Overall Company Financial Performance
-- ==========================================

SELECT 
SUM(Sales) AS total_sales, 
SUM(Profit) AS total_profit, 
SUM(Profit)/SUM(Sales) AS profit_margin
FROM superstore;

-- ==========================================
-- 2. Regional Performance Analysis
-- ==========================================

SELECT 
    Region,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percent
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- ==========================================
-- 3. Category Performance Analysis
-- ==========================================

SELECT 
    Category, 
    SUM(Sales) AS total_sales, 
    SUM(Profit) AS total_profit, 
    ROUND((SUM(Profit)/SUM(Sales)) *100 , 2) AS profit_margin_percent 
FROM superstore 
GROUP BY Category 
ORDER BY profit_margin_percent ASC;

-- ==========================================
-- 4. Furniture Sub-Category Profitability Analysis
-- Identifying Low-Margin and Loss-Making Products
-- ==========================================

SELECT 
    `Sub-Category`,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore
WHERE Category = 'Furniture'
GROUP BY `Sub-Category`
ORDER BY total_profit ASC;

-- ==========================================
-- 5. Regional Impact on Loss-Making Furniture Sub-Categories
-- Analyzing Tables and Bookcases by Region
-- ==========================================

SELECT 
    Region, 
    sub_category,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percent
FROM superstore
WHERE Category = 'Furniture'
  AND sub_category IN ('Tables', 'Bookcases')
GROUP BY Region, sub_category
ORDER BY total_profit ASC;

