<div align="center">

# 📊 Superstore Sales & Profit Excel Dashboard

**An interactive, formula-driven Excel dashboard that turns 9,994 retail order lines into KPIs, heatmaps and 16 charts, filterable by Year and Region.**

![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![Dashboard](https://img.shields.io/badge/Interactive-Dashboard-1F3A5F?style=for-the-badge)
![Pivot Tables](https://img.shields.io/badge/Pivot%20Tables-Included-2A9D8F?style=for-the-badge)
![Dataset](https://img.shields.io/badge/Rows-9%2C994-E76F51?style=for-the-badge)

</div>

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Dashboard Preview](#-dashboard-preview)
- [Key Features](#-key-features)
- [KPIs Tracked](#-kpis-tracked)
- [Key Insights](#-key-insights)
- [Workbook Structure](#-workbook-structure)
- [Excel Skills Demonstrated](#-excel-skills-demonstrated)
- [Dataset](#-dataset)
- [How to Use](#-how-to-use)
- [Repository Structure](#-repository-structure)
- [Author](#-author)

---

## 🔎 Overview

This project analyses the classic **Superstore** retail dataset (orders from 2014 to 2017 across four US regions) and presents the results in a single, professional Excel dashboard.

The goal is to answer practical business questions:

- How are **sales and profit** trending over time?
- Which **categories, sub-categories, regions and segments** perform best, and which lose money?
- How much does **discounting** hurt profitability?
- Who are the **top customers, states and products**?

Everything on the dashboard is driven by **live Excel formulas** linked to the data sheet, so changing a filter recalculates every KPI, table and chart instantly. No macros or VBA are used.

---

## 🖼️ Dashboard Preview

> **Note:** save your screenshots in an `images/` folder with these names so they display here.

![Dashboard – KPIs, insights, heatmaps and trend charts](images/dashboard-top.png)

![Dashboard – category, regional, discount and top-10 charts](images/dashboard-bottom.png)

---

## ✨ Key Features

| Feature | Description |
|---|---|
| 🎛️ **Dynamic filters** | Drop-down selectors for **Year** (All, 2014–2017) and **Region** (All, Central, East, South, West) that update the entire dashboard |
| 🧮 **12 KPI cards** | Sales, profit, margin, orders, average order value, growth rates, discount, shipping time and more |
| 💡 **6 insight cards** | Automatically names the top category, region, segment and state, plus the best and worst sub-categories by profit |
| 🌡️ **3 heatmaps** | Colour-scaled tables: Profit (Region × Category), Sales (Region × Segment), Profit Margin (Year × Category) |
| 📈 **16 charts** | Line, clustered and stacked columns, horizontal bars and doughnuts |
| 🧾 **Pivot-table analysis** | Four pivot tables with a 3D bar chart and a line chart on a dedicated sheet |
| 🧑‍💼 **Manager mapping** | Regional managers looked up with `VLOOKUP` and attached to every order |

---

## 📌 KPIs Tracked

**Row 1: Performance**

| KPI | Value (all years, all regions) |
|---|---|
| Total Sales | **$2,297,201** |
| Total Profit | **$286,397** |
| Profit Margin | **12.5%** |
| Total Orders | **5,009** |
| Average Order Value | **$458.61** |
| Sales Growth vs Prior Year | Shown when a single year is selected |

**Row 2: Operations and Risk**

| KPI | Value (all years, all regions) |
|---|---|
| Units Sold | **37,873** |
| Average Discount | **15.6%** |
| Average Shipping Days | **4.0 days** |
| Profit per Order | **$57.18** |
| Loss-Making Lines % | **18.7%** |
| Profit Growth vs Prior Year | Shown when a single year is selected |

---

## 📈 Charts Included

1. Monthly Sales & Profit Trend (line)
2. Yearly Sales & Profit (column)
3. Sales by Category per Year (stacked column)
4. Monthly Orders (column)
5. Profit by Sub-Category (bar)
6. Profit Margin by Sub-Category (bar)
7. Sales & Profit by Region (column)
8. Profit by Discount Band (column)
9. Sales by Customer Segment (doughnut)
10. Sales by Ship Mode (doughnut)
11. Sales & Profit by Category (column)
12. Sales & Profit by Segment (column)
13. Top 10 States by Sales (bar)
14. Top 10 Customers by Sales (bar)
15. Top 10 Products by Sales (bar)
16. 10 Biggest Loss-Making Products (bar)

---

## 🧠 Key Insights

- 🏆 **Technology** is the top category by sales (about $836K) and, together with **Office Supplies**, delivers strong margins of roughly **17%**.
- ⚠️ **Furniture** generates about $742K in sales but earns only a **~2.5% margin**, so it is high revenue with low profitability.
- 🗺️ The **West** is the top region by both sales (about $725K) and profit (about $108K). The **Central** region has the lowest profit margin.
- 👤 **Consumer** is the largest customer segment, and **California** is the top state by sales.
- 📉 **Tables** is the least profitable sub-category (a net loss), while **Copiers** is the most profitable.
- 🏷️ **Discounting is the biggest profit leak.** Orders with no discount earn about **$321K** in profit, while discounts above 20% push profit negative:

| Discount band | Profit |
|---|---|
| 0% | $320,988 |
| 11–20% | $91,756 |
| 21–30% | ($10,369) |
| 31–50% | ($48,448) |
| Over 50% | ($76,559) |

- 🔻 About **18.7% of order lines are loss-making**, a clear target for pricing and discount policy review.

> All figures above are calculated from the dataset in this workbook with all filters set to **All**.

---

## 🗂️ Workbook Structure

The file `YakshPatel_ExcelDashboard.xlsx` contains the following sheets:

| Sheet | Purpose |
|---|---|
| **Dashboard** | The main interactive dashboard: filters, KPI cards, insight cards, heatmaps and 16 charts |
| **Analysis** | Formula-based summary tables (monthly, yearly, category, sub-category, region, segment, states, customers, products, discount bands, ship mode) that feed the dashboard charts |
| **Data** | Cleaned data used by the dashboard formulas, with helper columns: Year, Month, Order Count and Ship Days |
| **Superstore Dataset** | The original raw dataset (9,994 rows × 21 columns). Negative profit values are highlighted in red |
| **Managers** | Lookup table mapping each region to its manager |
| **Q.1** | 5,009 rows with one row per unique Order ID |
| **Q.2** | The same 5,009-row set with duplicate-value highlighting applied |
| **Q.3 & Q.5** | Four pivot tables (sales and profit by category and sub-category, profit and sales by region, sales by category, order count by category) with a 3D bar chart and a line chart |
| **Q.4** | Adds three calculated columns: **Profitability** (Profitable / Loss), **Discount Tier** (High when discount is above 20%) and **Managers** (looked up by region) |

**Regional managers**

| Region | Manager |
|---|---|
| East | Swayam Vekariya |
| West | Prince Rabari |
| Central | Yaksh Patel |
| South | Havan Desai |

---

## 🛠️ Excel Skills Demonstrated

- **Formulas:** `SUMIFS`, `COUNTIFS`, `AVERAGEIFS`, `INDEX` + `MATCH`, `IF`, `IFERROR`, `VLOOKUP`, `YEAR`, `MONTH`
- **Dynamic dashboards:** data-validation drop-downs driving criteria cells, so one filter controls every KPI and chart
- **Pivot tables and pivot charts** for quick exploratory analysis
- **Conditional formatting:** 3-colour and 2-colour scales (heatmaps), duplicate-value highlighting, negative-value highlighting
- **Structured Excel Tables** with calculated columns
- **Data cleaning:** removing duplicate Order IDs and creating helper columns
- **Data visualisation:** consistent colour palette, clear titles, KPI cards and a clean grid-free layout
- **Dashboard design:** logical top-to-bottom flow from headline KPIs to detailed drill-down charts

---

## 📦 Dataset

- **Source:** Superstore sales dataset (commonly used for BI practice)
- **Size:** 9,994 order lines, 21 columns
- **Period:** 2014 to 2017
- **Geography:** United States, 4 regions, 49 states
- **Fields:** Order ID, Order/Ship Date, Ship Mode, Customer, Segment, Location, Region, Product, Category, Sub-Category, Sales, Quantity, Discount, Profit

---

## 🚀 How to Use

1. **Download** `YakshPatel_ExcelDashboard.xlsx` from this repository.
2. Open it in **Microsoft Excel** (desktop version recommended).
3. Go to the **Dashboard** sheet.
4. Use the yellow **Year** and **Region** drop-downs at the top to filter the whole dashboard.
5. Explore the other sheets for the underlying analysis, pivot tables and calculated columns.

**Tips**

- If Excel opens the file in *Protected View*, click **Enable Editing** so the formulas and filters work.
- The file has many formulas over about 10,000 rows, so allow a moment for the first calculation.
- The dashboard is designed for desktop Excel. Excel Online and Google Sheets may display charts and conditional formatting differently.

---

## 📁 Repository Structure

```text
.
├── YakshPatel_ExcelDashboard.xlsx
├── Superstore Dataset.csv
├── dashboard-top.png
├── dashboard-bottom.png             
└── README.md
```

---

## 👤 Author

**Yaksh Patel**

- GitHub: [@Yaksh-Codes](https://github.com/Yaksh-Codes)
- LinkedIn: [@Yaksh19](https://www.linkedin.com/in/Yaksh19)

---

<div align="center">

⭐ If you found this project useful, please consider giving it a star!

</div>
