/*
2. Category-Level Volatility: Profit Margin Standard Deviation

🎯 What It Does:

For each product Category and Sub-Category, it computes:
	•	Total sales, profit, order count
	•	Standard deviation of profit margins → a volatility proxy
	•	Average discount and shipping cost

📌 This mirrors financial-style volatility modeling, great for:
	•	High-risk product flagging
	•	Input to deep risk modeling or product reliability scores
*/

-- ⚠️ Category/Sub-Category Volatility Summary
-- Inspired by risk volatility in finance: std deviation of profit margin
use global_superstore;
SELECT 
    Category,
    SubCategory,

    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(AVG(Profit_Margin), 4) AS Avg_Profit_Margin,
    
    -- 📉 Volatility proxy: std deviation of margin
    ROUND(STDDEV(Profit_Margin), 4) AS Margin_StdDev,

    -- Additional insights
    ROUND(AVG(Discount), 3) AS Avg_Discount,
    ROUND(AVG(Shipping_Cost), 2) AS Avg_Shipping_Cost

FROM 
    mytable

GROUP BY 
    Category, SubCategory

ORDER BY 
    Margin_StdDev DESC;