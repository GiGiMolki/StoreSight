# 📊 Global Superstore Sales Analysis  
**An Exploratory Data Analysis Project using Python, SQL, and Statistics**

---

## 🧠 Objective  
This project investigates the Global Superstore dataset to extract data-driven insights that influence business decisions across key domains: returns, profitability, customer behavior, logistics, and sales trends.

---

## 🧰 Tools & Skills Used
- **Languages:** Python (Pandas, NumPy), SQL
- **Libraries:** Matplotlib, Seaborn, Warnings
- **Skills:** Exploratory Data Analysis, Data Cleaning, Feature Engineering, Data Visualization, Statistics
- **IDE:** Visual Studio Code (VS Code)

---

## 🗂️ Data Overview
- **Rows:** ~51,000 orders  
- **Columns:** 26 features, including:
  - Dates: `Order Date`, `Ship Date`
  - Sales: `Sales`, `Profit`, `Discount`, `Shipping Cost`
  - Customer: `Segment`, `Customer ID`, `Returned`
  - Product: `Product ID`, `Category`, `Sub-Category`
  - Location: `City`, `State`, `Country`, `Region`

---

## 🧼 Data Cleaning & Profiling

| Feature         | Missing %      |
|----------------|----------------|
| `Postal Code`  | 80.51%         |
| `Returned`     | 95.70%         |

- **Missing Value Handling:**  
  - `Returned` nulls indicate non-returned orders (inferred from context).
  - `Postal Code` dropped due to low usefulness and high null %.

- **Date Parsing & Feature Engineering:**
  - Created `Order Year` from `Order Date`
  - Used `Returned` as binary target for focused analysis

---

## 🔁 Return Analysis (Completed)

### 1. **Annual Return Volume (2012–2015)**  
| Year | Returns |
|------|---------|
| 2012 | 431     |
| 2013 | 427     |
| 2014 | 597     |
| 2015 | 747     |

- **Insight:** Returns increased sharply in 2014 and peaked in 2015.

---

### 2. **Return Counts by Product Category**  
- 📦 **Office Supplies**: Highest number of returns (~1350)
- 🖥️ **Technology** and 🪑 **Furniture**: Similar, lower return counts (~425)

---

### 3. **Return Rate (%) by Category**  
- All categories had nearly **identical return rates (~4.3%)**, implying a **uniform return behavior** across products.

---

### 4. **Return Rate by Ship Mode**  
- **Standard Class** had the most returns (~1,400)
- **Same Day** had the fewest
- May suggest longer delivery = more returns

---

### 5. **Profitability of Returned Orders**
- Returned orders:
  - Often show **negative profit**
  - Narrower profit distribution
- Non-returned orders:
  - Show wider, mostly positive profit range

---

### 6. **Return Rate by Customer Segment**  
| Segment      | Return Rate |
|--------------|-------------|
| Consumer     | ~4.5%       |
| Corporate    | ~4.2%       |
| Home Office  | ~3.8%       |

---

### 7. **Top Global Regions by Return Rate (%)**
- High-return regions (with at least 10 orders):
  - 📍 **Gisborne, Taipei City, Cantabria** → 50–70% return rates
  - Regions like **Yambol, Korçë, Elbasan** had near 100% return rates but were filtered due to low order counts

- **Insight:**  
  Product issues or shipping delays in these regions might be driving returns

---

## 📍 Key Findings So Far

|  Insight               | Summary                                                            |
|------------------------|--------------------------------------------------------------------|
| Returns                | Returns increased each year from 2012 to 2015                      |
| Uniform Return Rate    | All product categories return rate ~4.3%                           |
|  Returned = Loss       | Returned orders consistently show low or negative profits          |
| Global Return Hotspots | Certain international regions have exceptionally high return rates |
| Standard Class Caution | Highest returns found in Standard shipping                         |

---

## 📦 Next Steps (Planned)
1. **Profitability vs. Returns Analysis**
2. **Discount Impact on Profit & Returns**
3. **Shipping Time and Cost Impact**
4. **Sales Trend and Seasonal Patterns**
5. **Product Performance Ranking**
6. **Customer Segmentation & Behavior**
7. **SQL Integration for advanced queries**
8. **Optional: Interactive Dashboard (Streamlit or Tableau)**

---

## 🧾 Final Deliverables
- 📂 Full Project Codebase in Python (VSCode environment)
- 📊 Visualizations with Seaborn & Matplotlib
- 📄 Professional README and PDF Report
- 🎥 Presentation Slides (for portfolio/demo)
- 💡 Optional Streamlit Web App / Dashboard