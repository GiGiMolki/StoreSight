
# 📂 SQL Queries — Global Superstore EDA 

This folder contains **advanced, ML/Deep Learning-aligned SQL scripts** that support exploratory analysis, signal generation, and data-driven insights for use in quantitative research, risk modeling, and AI applications.

These queries go beyond standard aggregation — they mimic volatility modeling, time-series tracking, and customer-level feature engineering commonly used in fintech, quant trading, and recommendation systems.



## 📜 Query Index


### 01_Inserting_data.sql
Creates the `cleaned_global_superstore` table schema.
Template for loading the CSV file into your SQL engine.

### 02_customer_profitability_summary.sql
Customer-level profit, return rate, discount, quantity, margin — used for customer segmentation and DL embeddings.

### 03_category_margin_volatility.sql
Calculates profit margin volatility per category/sub-category (standard deviation) — great for identifying unstable product lines.

### 04_discount_elasticity.sql
Models how sales/profit/quantity change with discount — mimics price elasticity modeling in economics and demand forecasting.

### 05_shipping_latency_profile.sql
Breaks down shipping delays and margin impacts per region and ship mode — useful for latency and margin erosion analysis.

### 05_rolling_profitability_by_region.sql
Uses window functions to calculate YoY profit growth and ranks regions by profitability over time.






*Author: GiGi Molki*  
*Project: Global Superstore Sales & Profitability Analysis*
