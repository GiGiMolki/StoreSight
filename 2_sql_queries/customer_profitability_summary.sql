-- 🧠 Advanced Customer-Level Profitability Summary
-- Useful for ML-based value modeling and DL-powered customer embeddings
use global_superstore;
SELECT 
    Customer_ID,
    Customer_Name,
    Segment,
    
    -- Total financials
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(AVG(Profit_Margin), 4) AS Avg_Profit_Margin,
    
    -- Behavior metrics
    SUM(Quantity) AS Total_Quantity,
    ROUND(AVG(Discount), 3) AS Avg_Discount,
    ROUND(AVG(Shipping_Cost), 2) AS Avg_Shipping_Cost,

    -- Return behavior
    SUM(Is_Returned) AS Return_Count,
    ROUND(SUM(Is_Returned) * 1.0 / COUNT(DISTINCT Order_ID), 4) AS Return_Rate,

    -- Recency (most recent order per customer)
    MAX(Order_Date) AS Last_Order_Date

FROM 
    cleaned_global_superstore

GROUP BY 
    Customer_ID, Customer_Name, Segment

ORDER BY 
    Total_Profit DESC;