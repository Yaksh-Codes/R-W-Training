# 🔄 Data Transformer — SQL Project

![MySQL](https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Project-Completed-success?style=for-the-badge)

## 📌 Project Overview

**Data Transformer** is a comprehensive SQL project developed to strengthen practical knowledge of advanced SQL operations using **MySQL**.

The project demonstrates how SQL can be used to create, manage, transform, analyze, and retrieve structured data from multiple related tables.

The project covers:
- Database and table creation
- Primary and foreign keys
- Data insertion and retrieval
- INNER JOIN, LEFT JOIN, RIGHT JOIN
- FULL OUTER JOIN simulation using UNION
- Subqueries and aggregate functions
- Date and string functions
- Window functions
- Conditional logic using CASE
- Data ranking and business-rule transformations

## 🎯 Project Objective

The main objective is to develop practical SQL skills by working with a small **Corporate Data Analysis System** focused on:

1. **Customer Information Management**
2. **Sales Transaction Processing**
3. **Employee Performance Data**

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| **MySQL** | Database Management System |
| **SQL** | Data querying and transformation |
| **MySQL Workbench** | SQL development and execution |

## 🗃️ Database Structure

```text
DataTransformer
│
├── Customers
├── Orders
└── Employees
```

### Customers

| Column | Data Type | Description |
|---|---|---|
| CustomerID | INT | Unique customer identifier |
| FirstName | VARCHAR(50) | Customer first name |
| LastName | VARCHAR(50) | Customer last name |
| Email | VARCHAR(100) | Customer email |
| RegistrationDate | DATE | Customer registration date |

### Orders

| Column | Data Type | Description |
|---|---|---|
| OrderID | INT | Unique order identifier |
| CustomerID | INT | Customer reference |
| OrderDate | DATE | Date of order |
| TotalAmount | DECIMAL(10,2) | Total order amount |

`Orders.CustomerID` is connected to `Customers.CustomerID` through a foreign key.

### Employees

| Column | Data Type | Description |
|---|---|---|
| EmployeeID | INT | Unique employee identifier |
| FirstName | VARCHAR(50) | Employee first name |
| LastName | VARCHAR(50) | Employee last name |
| Department | VARCHAR(50) | Employee department |
| HireDate | DATE | Employee joining date |
| Salary | DECIMAL(10,2) | Employee salary |

# 📊 SQL Tasks Implemented

| # | SQL Task | Concept |
|---|---|---|
| 1 | Retrieve orders and customer details | INNER JOIN |
| 2 | Retrieve all customers and orders | LEFT JOIN |
| 3 | Retrieve all orders and customers | RIGHT JOIN |
| 4 | Retrieve all customers and orders | FULL OUTER JOIN |
| 5 | Orders above average amount | Subquery + AVG |
| 6 | Employees above average salary | Subquery + AVG |
| 7 | Calculate average salary | AVG |
| 8 | Calculate employee tenure | DATEDIFF |
| 9 | Format order date | DATE_FORMAT |
| 10 | Create customer full name | CONCAT |
| 11 | Replace customer name | REPLACE |
| 12 | Change text case | UPPER + LOWER |
| 13 | Extract name from email | SUBSTRING_INDEX |
| 14 | Calculate total order amount | SUM |
| 15 | Rank orders | RANK |
| 16 | Assign discounts | CASE |
| 17 | Categorize salaries | CASE |

## 🔗 JOIN Operations

### 1. INNER JOIN

```sql
SELECT
    o.OrderID,
    o.OrderDate,
    o.TotalAmount,
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email
FROM Orders AS o
INNER JOIN Customers AS c
    ON o.CustomerID = c.CustomerID;
```

### 2. LEFT JOIN

```sql
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;
```

### 3. RIGHT JOIN

```sql
SELECT
    o.OrderID,
    o.OrderDate,
    o.TotalAmount,
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email
FROM Customers AS c
RIGHT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;
```

### 4. FULL OUTER JOIN

MySQL does not directly support `FULL OUTER JOIN`, so `LEFT JOIN`, `RIGHT JOIN`, and `UNION` are used to achieve equivalent functionality.

```sql
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID

UNION

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers AS c
RIGHT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;
```

## 📈 Data Analysis

### Orders Above Average Amount

```sql
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount > (
    SELECT AVG(TotalAmount)
    FROM Orders
);
```

### Employees Above Average Salary

```sql
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Department,
    HireDate,
    Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);
```

### Average Salary

```sql
SELECT
    ROUND(AVG(Salary), 2) AS AverageSalary
FROM Employees;
```

## 📅 Date Transformation

### Employee Tenure

```sql
SELECT
    EmployeeID,
    FirstName,
    LastName,
    HireDate,
    CURDATE() AS CurrentDate,
    DATEDIFF(CURDATE(), HireDate) AS DaysWorked
FROM Employees;
```

### Format Order Date

```sql
SELECT
    OrderID,
    CustomerID,
    OrderDate,
    DATE_FORMAT(OrderDate, '%d-%m-%Y') AS FormattedOrderDate,
    TotalAmount
FROM Orders;
```

## 🔤 String Transformation

### Concatenate Full Name

```sql
SELECT
    CustomerID,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    Email
FROM Customers;
```

### Replace String

```sql
SELECT
    CustomerID,
    FirstName,
    REPLACE(FirstName, 'John', 'Jonathan') AS UpdatedFirstName,
    LastName
FROM Customers;
```

### Uppercase and Lowercase

```sql
SELECT
    CustomerID,
    UPPER(FirstName) AS UppercaseFirstName,
    LOWER(LastName) AS LowercaseLastName
FROM Customers;
```

### Extract Name from Email

```sql
SELECT
    CustomerID,
    Email,
    REPLACE(
        SUBSTRING_INDEX(Email, '@', 1),
        '.',
        ' '
    ) AS FullName
FROM Customers;
```

## 💰 Financial Analysis

### Total Order Amount

```sql
SELECT
    ROUND(SUM(TotalAmount), 2) AS TotalOrderAmount
FROM Orders;
```

## 🏆 Window Function

### Rank Orders

```sql
SELECT
    OrderID,
    CustomerID,
    OrderDate,
    TotalAmount,
    RANK() OVER (
        ORDER BY TotalAmount DESC
    ) AS OrderRank
FROM Orders;
```

## 🏷️ Conditional Transformation

### Discount Rules

| Order Amount | Discount |
|---|---:|
| > 500 | 5% |
| >= 100 | 10% |
| < 100 | 0% |

```sql
SELECT
    OrderID,
    CustomerID,
    TotalAmount,
    CASE
        WHEN TotalAmount > 500 THEN 0.05
        WHEN TotalAmount >= 100 THEN 0.10
        ELSE 0.00
    END AS DiscountRate
FROM Orders;
```

### Salary Categories

| Salary | Category |
|---|---|
| >= 60,000 | High |
| >= 40,000 | Medium |
| < 40,000 | Low |

```sql
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Department,
    Salary,
    CASE
        WHEN Salary >= 60000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees;
```

> **Note:** Salary thresholds are project assumptions because the assignment does not specify exact ranges.

# 📂 Recommended Project Structure

```text
Data-Transformer-SQL/
│
├── README.md
│
├── Code/
│   └── Data_Transformer.sql
│
└── Screenshots/
    ├── 01_Database_and_Tables.png
    ├── 02_Joins.png
    ├── 03_Subqueries.png
    ├── 04_String_Functions.png
    ├── 05_Date_Functions.png
    ├── 06_Aggregate_Functions.png
    ├── 07_Window_Functions.png
    └── 08_Case_Statements.png
```

# 🚀 How to Run

### Step 1 — Install MySQL

Install **MySQL Server** and **MySQL Workbench**.

### Step 2 — Open MySQL Workbench

Connect to your local MySQL server.

### Step 3 — Open the SQL file

Open:

```text
Code/Data_Transformer.sql
```

### Step 4 — Execute the script

Run the SQL script using the **Execute** button in MySQL Workbench.

The script creates the database, tables, relationships, sample records, and required queries.

### Step 5 — Verify the data

```sql
USE DataTransformer;

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Employees;
```

# 💡 Key Learning Outcomes

- Relational database design
- Primary and foreign keys
- Table relationships
- JOIN operations
- Subqueries
- Aggregate functions
- Date manipulation
- String manipulation
- Window functions
- Conditional business logic
- Data transformation
- SQL-based business analysis

# 📊 Business Applications

### Customer Analytics
- Customer order history
- Customer registration analysis
- Customers without purchases
- Customer information management

### Sales Analytics
- Order performance
- Average order value
- Total revenue
- Order ranking
- Discount analysis

### Employee Analytics
- Salary analysis
- Employee tenure
- Salary categorization
- Department-level employee analysis

# 🔍 SQL Functions Used

```text
CREATE DATABASE
CREATE TABLE
INSERT INTO
SELECT
WHERE
INNER JOIN
LEFT JOIN
RIGHT JOIN
UNION
AVG()
SUM()
ROUND()
CONCAT()
REPLACE()
UPPER()
LOWER()
SUBSTRING_INDEX()
CURDATE()
DATEDIFF()
DATE_FORMAT()
RANK()
CASE
```

# 🧠 Assumptions

1. `CustomerID`, `OrderID`, and `EmployeeID` are unique identifiers.
2. `Orders.CustomerID` references `Customers.CustomerID`.
3. Order amounts and salaries use `DECIMAL(10,2)`.
4. Salary thresholds are project assumptions.
5. Orders above ₹500 receive a 5% discount.
6. Orders from ₹100 to ₹500 receive a 10% discount according to the assignment example.
7. Orders below ₹100 receive no discount.
8. Employee tenure is calculated dynamically using the current system date.
9. Email addresses follow the `firstname.lastname@domain` pattern.


# 🎓 Project Information

**Project:** Data Transformer  
**Database:** MySQL  
**Language:** SQL  
**Project Type:** Academic / Practical SQL Project  
**Focus:** Data Transformation, Analysis & Relational Database Queries

# 👨‍💻 Author

**Yaksh Patel**

Data Science & Analytics Enthusiast

### Skills Demonstrated

```text
SQL
MySQL
Data Analysis
Data Transformation
Database Management
Data Querying
Business Analytics
```

# ⭐ Project Highlights

```text
✓ Relational Database Design
✓ 3 Related Tables
✓ Primary & Foreign Keys
✓ 17 SQL Tasks
✓ Multiple JOIN Operations
✓ Subqueries
✓ Aggregate Functions
✓ Date Functions
✓ String Functions
✓ Window Functions
✓ CASE Statements
✓ Business Rule Implementation
```

# 📌 Conclusion

The **Data Transformer** project demonstrates practical SQL implementation for relational data management, transformation, and analysis.

By working with customer, order, and employee datasets, the project covers essential SQL concepts applicable to **Data Analyst, Data Scientist, Business Analyst, and Database-related roles**.

---

⭐ **If you find this project useful, consider giving the repository a star!**
