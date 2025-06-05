# 🛒 Global Superstore Sales & Profitability Analytics

[Project Overview](https://gamma.app/docs/Global-Superstore-Sales-Profitability-Analysis-4er7hvfora09aj7)
## 📘 Executive Summary

This end-to-end project analyzes the Global Superstore dataset across all major business dimensions — sales trends, profit margins, customer segments, product performance, regional differences, shipping logistics, promotions, and returns. The goal is to generate actionable insights to improve profitability, operational efficiency, and customer targeting.

---

## 📂 Project Structure (Notebooks)

| Notebook | Focus Area |
|----------|------------|
| `01_data_cleaning_and_preprocessing.ipynb` | Data validation, null handling, date parsing |
| `02_feature_engineering.ipynb`             | Created features: Profit Margin, Shipping Delay, RFM |
| `03_Data_Exploration_Visualization.ipynb`  | visualised basic trends in tghe dataset  |
| `04_sales_trends_analysis.ipynb`           | Time-based sales trends and seasonal patterns |
| `05_profitability_analysis.ipynb`          | Margins by category, discount impact, loss detection |
| `06_customer_segmentation.ipynb`           | RFM + clustering for loyalty and value analysis |
| `07_product_performance.ipynb`             | Product-level profit/sales metrics and lifecycle classification |
| `08_regional_analysis.ipynb`               | Market-level sales, profit, margin contributions |
| `09_shipping_dynamics.ipynb`               | Shipping cost, delays, mode efficiency analysis |
| `10_promotional_effectiveness.ipynb`       | Discount impact, elasticity modeling, loss leader detection |
| `11_return_analysis.ipynb`                 | Return trends by segment, region, category |


---

## 🔍 Key Insights by Theme

### 📈 Sales Trends
- Steady YoY growth with seasonality spikes (esp. Q4).
- Highest sales in **Technology** and **Office Supplies** categories.
- **West US** and **Western Europe** are top-performing regions.

### 💸 Profitability
- **Overall margin: ~11.6%**.
- **Furniture** has lowest margins; **Technology** leads in profit volume.
- **Discounts >20%** lead to sharp profit loss.
- Shipping costs reduce margins significantly (correlation: **-0.14**).

### 👥 Customer Segmentation
- Used RFM scoring + KMeans clustering:
  - Segments: **Loyal**, **Champion**, **At-Risk**, **Lost**
  - ~21% of customers are Loyal/Champion — target for retention.

### 📦 Product Performance
- Lifecycle categories: **Stars**, **Volume Drivers**, **Loss Leaders**
- Top 20 products generate **80% of profit**
- High-sales ≠ high-profit → focus on **margin-driven SKUs**

### 🌍 Regional Analysis
- **Western Europe**, **India**, **China**, and **Western US** drive majority of profits.
- **Oceania and Western Asia** have high sales but thin or negative margins.

### 🚚 Shipping Dynamics
- **Standard Class** is most used but costly.
- **Same Day** is fast but low volume.
- Delay doesn’t impact profit directly, but **shipping cost % does**.

### 🎯 Promotional Effectiveness
- Discount Elasticity Model: **-238.64** profit drop per 100% discount.
- Most profitable discount bin: **0–10%**
- Discounts >30% = negative profit (up to **-114%** margin)
- Return rates stay flat across discounts — profit loss is due to **margin erosion**, not returns.

### 🔁 Return Analysis
- Overall return rate: **~4.3%**
- Top return-prone subcategories: **Tables**, **Labels**, **Accessories**
- High return regions (e.g., outside US) may have data issues or shipping/service challenges.

---

## ✅ Strategic Recommendations

| Area               | Recommendation |
|--------------------|----------------|
| 📉 Discounts        | Cap discounts at 20% max; restrict loss-leader campaigns |
| 📦 Product Strategy | Reprice or remove negative-profit SKUs |
| 🌍 Regional Focus   | Double down on **India**, **France**, **US-West**; re-evaluate **Oceania** and **Western Asia** |
| 📮 Shipping         | Reduce shipping cost % via vendor renegotiation or optimized routing |
| 🧠 Customer Targeting | Focus loyalty programs on **Champion** and **Loyal** clusters |
| 🔁 Returns          | Investigate high-return subcategories for quality or UX issues |

---


## 🧑‍💻 Author
GiGi Molki  
BTech Artificial Intelligence @ BMSCE  
