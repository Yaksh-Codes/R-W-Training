# PR.2 Analyzer — Excel Sales & Profit Analysis


A practical Microsoft Excel analytics project built around retail transaction data. The workbook explores customer purchasing patterns, sales and profit performance, discount scenarios, regression output, descriptive statistics, monthly trends, regional/category comparisons, and a summary dashboard.

## Project Overview

- **Project:** PR.2 Analyzer
- **Tool:** Microsoft Excel
- **Workbook:** `PR.2 Analyzer(2).xlsx`
- **Dataset size:** 200 transaction records
- **Domain:** Retail sales and profit analysis
- **Level:** Beginner to intermediate Excel analytics

## Objectives

- Summarize sales, profit, discounts, quantities, and order activity.
- Analyze customer-level purchase totals, order counts, ranks, and value segments.
- Compare sales and profit under alternative discount assumptions.
- Explore relationships between sales and other variables using regression output.
- Calculate descriptive statistics for sales, quantity, discount, and profit.
- Review monthly sales movement and growth.
- Compare regional performance across product categories.
- Present key metrics in a consolidated dashboard.

## Workbook Structure

| Worksheet | Purpose |
|---|---|
| `Sheet1` | Main transaction dataset with customer, region, category, sales, quantity, discount, order date, and profit fields. |
| `Q.1 & Q.7` | Customer-level total purchase, order count, rank, value status, and lookup examples. |
| `Q.2` | Discount scenario analysis, including current profit, adjusted profit, changes, and profit margin. |
| `Q.3` | Regression summary and ANOVA output for examining a relationship in the dataset. |
| `Q.4` | Descriptive statistics such as mean, median, standard deviation, variance, range, and distribution measures. |
| `Q.5` | Monthly sales summary and month-over-month change. |
| `Q.6` | Transaction data arranged for additional analysis. |
| `Q.8 & Q.9` | Regional sales comparison by product category, including grand totals. |
| `Q.10` | Sales and profit dashboard with headline metrics and visual summaries. |

## Excel Skills Demonstrated

- `SUM`, `SUMIFS`, and `SUMPRODUCT` for totals and scenario calculations
- `COUNTIF` / `COUNTA` for order counts
- `IF` for customer value classification
- `RANK` for customer purchase ranking
- `INDEX` + `MATCH` for customer lookups
- `AVERAGE` for average discount and related measures
- Regression and ANOVA output interpretation
- Pivot-table style summaries and monthly trend analysis
- KPI reporting and dashboard presentation

## Dataset Fields

| Field | Description |
|---|---|
| `Customer_ID` | Customer identifier |
| `Customer_Name` | Customer name |
| `Region` | Sales region |
| `Product_Category` | Category of product purchased |
| `Sales` | Sales amount for the transaction |
| `Quantity` | Number of units in the transaction |
| `Discount` | Discount rate applied |
| `Order_Date` | Date of the transaction |
| `Profit` | Profit recorded for the transaction |


## How to Use

1. Download or clone this repository.
2. Open `PR.2 Analyzer(2).xlsx` in Microsoft Excel.
3. Start with `Sheet1` to understand the transaction fields.
4. Review each `Q.*` worksheet to follow the analysis tasks and formulas.
5. Explore `Q.10` for the dashboard summary.
6. Change scenario inputs only where intended, and review the effect on calculated results.
7. Save a copy before modifying the original workbook.

> **Note:** Excel formulas and linked references may recalculate differently in other spreadsheet applications. Open the workbook in Microsoft Excel for the closest match to its intended behavior.

## Repository Structure

```text
PR.2-Analyzer/
├── README.md
├── PR.2 Analyzer(2).xlsx
└── Screenshots/
    ├── Q.1 & Q.7
    ├── Q.2
    └── Q.3
    ├── Q.4
    └── Q.5
    ├── Q.6
    └── Q.8 & Q.9
    └── Q.10

```

## Key Learning Outcomes

- Convert transaction-level data into customer and business summaries.
- Use Excel formulas to automate recurring calculations.
- Compare discount scenarios and interpret profit changes.
- Read descriptive statistics and regression output.
- Summarize performance by month, region, and product category.
- Communicate findings through a clear dashboard.

## Author

**Yaksh Patel**

This project is part of my practical learning and portfolio development in data analysis and Microsoft Excel.

---

If you find this project useful, feel free to ⭐ the repository.

