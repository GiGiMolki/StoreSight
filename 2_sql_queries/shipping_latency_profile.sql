/*
Shipping Latency Profiling by Region & Ship Mode

🎯 What It Does:

This query evaluates:
	•	Average shipping delay per region and ship mode
	•	Average profit margin and shipping cost
	•	Total volume to assess operational risk

📌 Similar to HFT-style latency tracking, this helps:
	•	Identify inefficient fulfillment pipelines
	•	Train models to predict margin loss due to logistics
	•	Optimize SLAs or vendor contracts in ops-heavy systems
*/

-- 🚚 Shipping Latency Profiling: Delay vs Margin Impact
-- Reveals fulfillment bottlenecks that hurt profitability
use global_superstore;
SELECT 
    Region,
    Ship_Mode,

    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND(AVG(Shipping_Delay_Days), 2) AS Avg_Delay_Days,
    ROUND(AVG(Shipping_Cost), 2) AS Avg_Shipping_Cost,
    ROUND(AVG(Profit_Margin), 4) AS Avg_Profit_Margin,

    ROUND(SUM(Profit), 2) AS Total_Profit

FROM 
    mytable

GROUP BY 
    Region, Ship_Mode

ORDER BY 
    Avg_Delay_Days DESC;