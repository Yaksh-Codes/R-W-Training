<div align="center">

# 📊 Data Intelligence Dashboard

**An interactive, formula-driven Excel analytics workbook for customer transaction data — 16 executive charts, a filterable dashboard, customer analytics, regression and what-if modelling. No macros, no add-ins.**

![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Formulas](https://img.shields.io/badge/Formulas-6%2C400%2B-1F3864?style=for-the-badge)
![Charts](https://img.shields.io/badge/Charts-29-C55A11?style=for-the-badge)
![Errors](https://img.shields.io/badge/Formula%20errors-0-70AD47?style=for-the-badge)

</div>

---

## 📸 Preview

### Interactive Dashboard
Filter by **Region**, **Category** and **date range** — KPI cards and charts recalculate instantly.

![Dashboard](Screenshot/dashboard.png)

### Executive Charts — trends, products, categories
![Executive Charts – Part 1](Screenshot/executive-charts-1.png)

### Executive Charts — regions, payments, customers
![Executive Charts – Part 2](Screenshot/executive-charts-2.png)

---

## ✨ Features

- **Filterable dashboard** — 12 KPI cards (revenue, orders, units, AOV, active customers, repeat rate, growth, top region/product/customer) driven by Region, Category and date selectors.
- **16 executive charts** on a dedicated sheet: combo charts (bars + line on a secondary axis), doughnuts, stacked columns/bars, area, Pareto, histogram and growth charts.
- **Customer analytics** — customer master (one row per customer), High-Value tiering by percentile, repeat vs one-time buyers, tenure, recency.
- **Sales analysis** — revenue by region, category, payment method, segment, product and month, with ranks, shares and MoM growth.
- **Regression** — `LINEST`-based output (R², ANOVA, coefficients, p-values) for Order Value ~ Quantity + Unit Price.
- **What-If scenarios** — Base / Optimistic / Pessimistic price, volume and discount drivers with a live selector.
- **Insights report** — auto-written executive summary and recommendations built from live formulas.
- **100% formulas** — every number recalculates when `Raw Data` changes.

---

## 🗂️ Workbook Structure

| Sheet | Purpose |
|---|---|
| **Dashboard** | Filterable KPI dashboard with 4 charts |
| **Executive Charts** | 16 professional charts in four themed sections |
| **Visualizations** | Chart gallery incl. Quantity vs Order Value scatter with trendline |
| **Insights Report** | Data-storytelling summary and recommendations |
| **Sales Analysis** | Group-by tables for region, category, payment, segment, product, month |
| **Customer Analysis** | Customer master, Top 10, tiers, repeat analysis |
| **Names & Lists** | Frequent products, repeating names, abbreviations |
| **Date & Time** | `TODAY`, `DATEDIF`, `EOMONTH` calculations and customer tenure |
| **Filter Demo** | Multi-criteria filtered transaction list |
| **What-If** | Scenario manager and outcome comparison |
| **Regression** | Linear regression output |
| **Chart Data** | Helper tables feeding the Executive Charts |
| **Raw Data** | 250 transactions (Apr 2024 – Apr 2025) |

---

## 📈 Executive Charts Included

| Section | Charts |
|---|---|
| **Revenue Trend & Momentum** | Monthly revenue & orders · Cumulative revenue · MoM growth · Daily run-rate |
| **Product & Category Mix** | Revenue by product (ranked) · Units by product · Category share · Region × Category |
| **Regional & Payment** | Revenue & AOV by region · Payment mix by region · Payment share · Orders by weekday |
| **Customer Insights** | Top-10 Pareto · Revenue by segment · Repeat vs one-time · Order-value distribution |

---

## 🚀 Getting Started

1. Download **`Data_Intelligence_Dashboard_Pro.xlsx`**.
2. Open in **Microsoft Excel 2024 / Microsoft 365** (recommended). LibreOffice also works.
3. Go to the **Dashboard** sheet and use the yellow cells (Region, Category, From, To) to filter.
4. Open **Executive Charts** for the full chart suite.

> If prompted, click **Enable Editing** so formulas can recalculate.

### Using your own data
1. Paste transactions into **Raw Data** using the same columns (`Transaction_ID`, `Date`, `Customer_ID`, `Product_Name`, `Category`, `Quantity`, `Unit_Price`, `Payment_Method`, `Region`, `Total_Amount`, …).
2. Everything else updates automatically. If you add rows beyond row 251, extend the ranges (`$2:$251`) in the analysis sheets.

---

## 🧮 Key Excel Techniques Used

`SUMIFS` · `COUNTIFS` · `INDEX/MATCH` · `SUMPRODUCT` · `RANK` · `PERCENTILE` · `LINEST` · `DATEDIF` · `EOMONTH` · `MINIFS/MAXIFS` · `TEXT` · conditional formatting · combo charts with secondary axes

---

## 📝 Notes & Assumptions

- Gross margin on the **What-If** sheet (35%) is an **assumption** — it is not in the source data. Edit it in cell `B8`.
- Month-over-month growth ignores partial months (Apr 2024 and Apr 2025); the daily run-rate chart normalises them.
- Dashboard filters apply to the Dashboard tab only; Executive Charts always show all data.
- Customer names and records are sample/synthetic data.

---

## 📁 Repository Layout

```
.
├── Data_Intelligence_Dashboard.xlsx
├── README.md
└── screenshots/
    ├── dashboard.png
    ├── executive-charts-1.png
    └── executive-charts-2.png
```

---

## 📄 License

Released under the [MIT License](LICENSE). Free to use, modify and share.

<div align="center">

⭐ If you find this useful, consider giving the repo a star.

</div>

