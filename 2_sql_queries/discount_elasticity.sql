/*
Price Elasticity by Discount Bucket

🎯 What It Does:

For each discount range (bucket):
	•	Computes average sales, profit, and quantity sold
	•	Calculates profit margin
	•	Reveals non-linear demand behavior in response to increasing discounts

📌 This mimics price-response modeling used in:
	•	Fintech recommender systems
	•	Alpha generation pipelines (if promotions = signals)
	•	Profit optimization models
*/

-- 📊 Price Elasticity by Discount Bin
-- Evaluates how sales and profit respond to different discount levels
use global_superstore;
SELECT 
    CASE 
        WHEN Discount < 0.10 THEN '0-10%'
        WHEN Discount < 0.20 THEN '10-20%'
        WHEN Discount < 0.30 THEN '20-30%'
        WHEN Discount < 0.40 THEN '30-40%'
        WHEN Discount < 0.50 THEN '40-50%'
        ELSE '50%+' 
    END AS Discount_Bin,

    COUNT(*) AS Order_Count,
    ROUND(AVG(Sales), 2) AS Avg_Sales,
    ROUND(AVG(Profit), 2) AS Avg_Profit,
    ROUND(AVG(Profit_Margin), 4) AS Avg_Profit_Margin,
    ROUND(AVG(Quantity), 2) AS Avg_Quantity

FROM 
    mytable

GROUP BY 
    Discount_Bin

ORDER BY 
    Discount_Bin;