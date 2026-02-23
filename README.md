## Project Structure
- superstore_analysis.sql → SQL queries used for analysis
- Dataset → Superstore retail dataset

# Superstore Profitability & Operational Analysis
Financial and operational analysis of retail superstore sales using SQL.

## Project Overview
This project analyzes 9,994 retail transactions to evaluate company-wide profitability, regional efficiency, and product-level performance.
The goal is to move beyond basic aggregation and identify where the business generates value — and where it loses it.

## Dataset
The dataset contains 9,994 retail transactions with the following key variables:
- Sales
- Profit
- Quantity
- Discount
- Region
- Category
- Sub-Category
- Segment
- Ship Mode

## Business Questions
1. What is the overall revenue and profit margin?
2. Which regions are most profitable?
3. Which product categories are loss-making?
4. Does discounting negatively impact profitability?
5. Where are operational inefficiencies occurring?

## Key Findings
The company operates at an overall profit margin of approximately 12.5%, indicating healthy performance.
The West region generates the highest revenue and maintains strong profitability.
The Central region generates more revenue than the South but has lower profitability, indicating margin inefficiency.
The Furniture category operates at a significantly lower margin (~2.5%) compared to other categories (17%+).
Within Furniture, Tables and Bookcases operate at negative margins.
Tables are unprofitable in all regions except West, while Bookcases are unprofitable in all regions except South.

## Business Implications
Review pricing and discount strategies for loss-making sub-categories.
Investigate shipping and logistics costs for bulky Furniture products.
Evaluate regional cost structures to address margin inefficiencies.
Optimize underperforming regions without affecting high-performing ones.

## Tools Used
- SQL
- GitHub for version control and project documentation

