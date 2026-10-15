# Excel Fundamental Booster — Practical 1

A structured, hands-on Microsoft Excel project covering essential spreadsheet skills, logical formulas, lookup functions, date and text operations, rounding, and criteria-based analysis. The workbook uses sample student, sales, employee, and product-price data to demonstrate how Excel formulas can automate everyday analysis tasks.

## 📌 Project Overview

**Project:** PR. 1 — Fundamental Booster  
**Tool:** Microsoft Excel  
**File:** `PR.1 Fundamental Booster.xlsx`  
**Level:** Beginner to Intermediate  
**Focus:** Excel formulas, data analysis, lookups, formatting, and formula-driven results

This project is designed as a practical learning workbook. It combines sample datasets with formula-based calculations and an analysis sheet where users can change input criteria and see results update dynamically.

## 🎯 Objectives

- Practice relative and absolute cell references.
- Classify student performance using `IF` and nested `IF` formulas.
- Apply `AND` and `OR` logic to evaluate multiple conditions.
- Summarize data with `COUNTIFS`, `SUMIFS`, and `AVERAGEIFS`.
- Retrieve matching records using `VLOOKUP` and related lookup exercises.
- Work with dates, text functions, and employee tenure.
- Use rounding functions such as `ROUND`, `CEILING`, and `FLOOR`.
- Filter and analyze records based on selected conditions.
- Build confidence in creating reusable, formula-driven spreadsheets.

## 📂 Workbook Structure

| Worksheet | Purpose |
|---|---|
| `Settings` | Central location for grade bands, thresholds, discount rules, and rounding settings used by formulas. |
| `Price_List` | Product codes, product names, and prices used by lookup formulas. |
| `Students` | Student IDs, names, subject scores, totals, averages, grade classifications, condition checks, and rankings. |
| `Sales` | Sample sales transactions with product prices, discount calculations, net amounts, eligibility checks, date labels, rounding, and rolling averages. |
| `Employees` | Employee details and salary data, including joining-date analysis, tenure, text transformations, and salary rounding. |
| `Analysis` | Criteria-driven exercises for counting, summing, averaging, looking up records, and checking results. |

## 🧮 Excel Concepts Demonstrated

### 1. Logical formulas
- `IF` and nested `IF` — classify student grades and assign discount rates based on thresholds.
- `AND` — check whether a student meets multiple subject-score conditions.
- `OR` — determine sales discount eligibility when at least one condition is met.

### 2. Conditional calculations
- `COUNTIFS` — count records matching one or more criteria.
- `SUMIFS` — calculate sales totals for a selected region and product.
- `AVERAGEIFS` — calculate averages for records that meet specified conditions.

### 3. Lookup formulas
- `VLOOKUP` — retrieve student names and product prices from reference tables.
- Lookup exercises use exact-match searches where appropriate.

### 4. Date and text functions
- `YEAR` and `TEXT` — extract or format joining dates and transaction months.
- `DATEDIF` and `TODAY` — calculate employee tenure dynamically.
- `LEFT` and `FIND` — extract first names from full names.
- `UPPER` and `LOWER` — standardize text capitalization.

### 5. Mathematical and rounding functions
- `SUM` and `AVERAGE` — calculate student totals and averages.
- `ROUND` — round calculated values.
- `CEILING` and `FLOOR` — round values up or down to a configured multiple.
- `RANK` and `COUNTIF` — rank student results while accounting for ties.
- `OFFSET` — demonstrate a rolling three-record average in the sales data.

### 6. Filtering and references
- `FILTER` — extract student records that meet a score threshold (where supported by the Excel version).
- Relative references such as `A1` and absolute references such as `$A$1` to control how formulas behave when copied.

## 🚀 How to Use the Workbook

1. Download or clone this repository.
2. Open `PR.1 Fundamental Booster.xlsx` in Microsoft Excel.
3. Start with the `Settings` and `Price_List` worksheets to understand the criteria and lookup values.
4. Review `Students`, `Sales`, and `Employees` to see how the formulas are applied to each dataset.
5. Open the `Analysis` worksheet.
6. Change the input cells provided for thresholds, departments, regions, products, IDs, or other criteria.
7. Check that the formula results update as expected.
8. Save a separate copy before making major changes to the original workbook.

> **Tip:** Cells used as formula inputs are intended to make the analysis reusable. Change the input criteria rather than overwriting formula cells.

## 📊 Example Analysis Scenarios

- Count students scoring above a selected Math threshold.
- Count students who exceed a threshold in all three subjects.
- Calculate total sales for a selected region and product.
- Find the average score for students above a chosen cutoff.
- Count employees in a department whose salary exceeds a selected amount.
- Calculate average salary by department.
- Look up a student name using a student ID.
- Retrieve a product price using a product code or product name.
- Review employee joining year, month, weekday, and tenure.
- Calculate discounts and net sales amounts for transactions.

## 🛠️ Requirements

- Microsoft Excel with support for the formulas used in the workbook.
- Excel 365 or Excel 2021+ is recommended for dynamic-array functions such as `FILTER`.
- Some functions, such as `DATEDIF` and `OFFSET`, may behave differently from newer dynamic-array functions but are supported in standard Excel desktop versions.

## 📁 Suggested GitHub Repository Layout

```text
Excel-Fundamental-Booster/
├── README.md
├── PR.1 Fundamental Booster.xlsx
└── Screenshots/
    ├── students-sheet.png
    ├── sales-sheet.png
    ├── employees-sheet.png
    └── analysis-sheet.png
```

Add screenshots of the completed worksheets to the `Screenshots/` folder if you want to make the repository easier to review. Update the image names and add embedded previews to this README only after those screenshots are added.

## 📚 Learning Outcomes

By completing this practical, learners gain experience with:
- Writing and copying formulas safely.
- Applying absolute and relative references.
- Turning raw tables into useful calculations.
- Building flexible analysis with criteria-driven inputs.
- Using lookup formulas to connect related datasets.
- Extracting insights from student, sales, and employee data.
- Organizing an Excel assignment for documentation and GitHub presentation.

## 👤 Author

**Yaksh Patel**

This repository documents an Excel fundamentals practical completed for learning and portfolio development.

---

⭐ If you find this project useful, consider starring the repository.

