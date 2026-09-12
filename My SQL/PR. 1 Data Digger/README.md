# 📊 Data Digger – SQL Database Project

A beginner-friendly and practical **MySQL database project** designed to demonstrate fundamental SQL concepts such as database creation, table relationships, CRUD operations, filtering, sorting, aggregate functions, subqueries, and basic sales analysis.

---

## 📌 Project Overview

**Data Digger** is a relational database project built using **MySQL**.

The project simulates a simple customer and e-commerce management system where customers can place orders containing different products.

The database consists of four main tables:

- 👤 Customers
- 🛒 Orders
- 📦 Products
- 🧾 OrderDetails

The project demonstrates how these tables can be connected using **Primary Keys** and **Foreign Keys** and how SQL queries can be used to retrieve and analyze business data.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Create and manage a MySQL database
- Create relational database tables
- Insert sample records
- Retrieve records using `SELECT`
- Update existing records
- Delete records
- Filter records using `WHERE`
- Search using exact values
- Sort data using `ORDER BY`
- Filter values using `BETWEEN`
- Work with dates
- Calculate `MAX`, `MIN`, `AVG`, and `SUM`
- Use `GROUP BY`
- Retrieve top-performing products
- Use subqueries
- Implement primary and foreign key relationships

---

## 🗂️ Database Structure

### 1. Customers

Stores customer information.

| Column | Data Type | Description |
|---|---|---|
| CustomerID | INT | Unique customer identifier |
| Name | VARCHAR(100) | Customer name |
| Email | VARCHAR(100) | Customer email |
| Address | VARCHAR(200) | Customer address |

The `CustomerID` column is the **Primary Key**.

---

### 2. Orders

Stores customer order information.

| Column | Data Type | Description |
|---|---|---|
| OrderID | INT | Unique order identifier |
| CustomerID | INT | Customer who placed the order |
| OrderDate | DATE | Date of the order |
| TotalAmount | DECIMAL(10,2) | Total order amount |

`OrderID` is the **Primary Key**.

`CustomerID` is a **Foreign Key** connected to the `Customers` table.

---

### 3. Products

Stores product and inventory information.

| Column | Data Type | Description |
|---|---|---|
| ProductID | INT | Unique product identifier |
| ProductName | VARCHAR(100) | Product name |
| Price | DECIMAL(10,2) | Product price |
| Stock | INT | Available stock |

`ProductID` is the **Primary Key**.

---

### 4. OrderDetails

Stores individual products included in each order.

| Column | Data Type | Description |
|---|---|---|
| OrderDetailID | INT | Unique order-detail identifier |
| OrderID | INT | Related order |
| ProductID | INT | Related product |
| Quantity | INT | Quantity purchased |
| SubTotal | DECIMAL(10,2) | Product subtotal |

`OrderDetailID` is the **Primary Key**.

`OrderID` and `ProductID` are **Foreign Keys**.

---

## 🔗 Database Relationships

The database follows a relational structure:

```text
Customers
    │
    │ CustomerID
    ▼
  Orders
    │
    │ OrderID
    ▼
OrderDetails
    │
    │ ProductID
    ▼
 Products
