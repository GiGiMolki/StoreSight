/*

Rolling Profitability by Region (YoY Comparison with Window Functions)

🎯 What It Does:

For each Region:
	•	Aggregates annual profit and sales
	•	Computes YoY profit growth
	•	Applies SQL window functions (LAG, RANK, ROW_NUMBER) for trend detection

📌 This mirrors alpha-generating logic in:
	•	Time-series ML pipelines
	•	Momentum-based signals used in HFT
	•	Revenue forecasting models
    
*/
    
  -- 📈 Region-wise Rolling Profitability Analysis with YoY Growth
-- Uses window functions to calculate trend and rank regions
use global_superstore;
WITH yearly_region_profit AS (
    SELECT 
        Region,
        EXTRACT(YEAR FROM Order_Date) AS Year,
        SUM(Sales) AS Total_Sales,
        SUM(Profit) AS Total_Profit,
        ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 4) AS Profit_Margin
    FROM 
        mytable
    GROUP BY 
        Region, EXTRACT(YEAR FROM Order_Date)
),

region_growth AS (
    SELECT 
        *,
        LAG(Total_Profit) OVER (PARTITION BY Region ORDER BY Year) AS Prev_Year_Profit,
        ROUND((Total_Profit - LAG(Total_Profit) OVER (PARTITION BY Region ORDER BY Year)) / NULLIF(LAG(Total_Profit) OVER (PARTITION BY Region ORDER BY Year), 0), 4) AS YoY_Profit_Growth
    FROM 
        yearly_region_profit
)

SELECT 
    Region,
    Year,
    Total_Sales,
    Total_Profit,
    Profit_Margin,
    Prev_Year_Profit,
    YoY_Profit_Growth,
    RANK() OVER (PARTITION BY Year ORDER BY Total_Profit DESC) AS Profit_Rank

FROM 
    region_growth

ORDER BY 
    Region, Year;  