create database datadigger;

use datadigger;

# Customers Table

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES
(1, 'Yaksh Patel', 'yaksh@gmail.com', 'Surat'),
(2, 'Priyank Shah', 'priyank@gmail.com', 'Ahmedabad'),
(3, 'Prasen Mehta', 'prasen@gmail.com', 'Vadodara'),
(4, 'Havan Desai', 'havan@gmail.com', 'Pune'),
(5, 'Tirth Patel', 'tirth@gmail.com', 'Mumbai');

select * from Customers;

update Customers set Address = 'USA' Where CustomerID = 1;

select * from Customers;

delete from Customers WHERE CustomerID = 5;
insert into Customers (CustomerID, Name, Email, Address) values (5, 'Tirth Patel', 'tirth@gmail.com', 'Surat');
select * from Customers;

select * from Customers where Name = 'Yaksh Patel';

# Orders Table

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, CURDATE(), 1500.00),
(102, 2, DATE_SUB(CURDATE(), INTERVAL 5 DAY), 2500.00),
(103, 3, DATE_SUB(CURDATE(), INTERVAL 15 DAY), 800.00),
(104, 4, DATE_SUB(CURDATE(), INTERVAL 25 DAY), 3200.00),
(105, 5, DATE_SUB(CURDATE(), INTERVAL 45 DAY), 1200.00);
select * from Orders;

select * from Orders where CustomerID = 1;

DELETE FROM Orders WHERE OrderID = 105;

select * from Orders where OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

select MAX(TotalAmount) AS Highest_Order, MIN(TotalAmount) AS Lowest_Order, AVG(TotalAmount) AS Average_Order from Orders;

# Product Table

create table Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

# insert at least 5 sample product into the Products table.

insert into Products (ProductID, ProductName, Price, Stock) values
(201, 'Laptop', 55000.00, 10),
(202, 'Keyboard', 1200.00, 25),
(203, 'Mouse', 700.00, 30),
(204, 'Monitor', 15000.00, 15),
(205, 'Headphones', 2500.00, 0);
select * from Products

# All product sorted by descending order.

select * from Products order by Price desc;
select * from Products order by Price desc;

# Update the price of a spacific product.

update Products set Price = 1500.00 where ProductID = 202;
select * from Products where ProductID = 202;

# Delete a product if it's out of stock.

delete from Products where ProductID = 205
select * FROM Products;

# Retrieve products priced between ₹500 and ₹2000

select * from Products where Price between 500 and 2000;

# Retrieve the most expensive and cheapest product
# most expensive product
select * from Products where Price = (select max(Price) from Products);

# cheapest product
select * from Products where Price = (select min(Price) from Products);


# OrderDetails Table

create table OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),

    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
    REFERENCES Products(ProductID)
);

# Insert at Least 5 Order Details
insert into OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, SubTotal) values
(301, 101, 201, 1, 55000.00),
(302, 101, 202, 2, 3000.00),
(303, 102, 204, 1, 15000.00),
(304, 102, 202, 3, 4500.00),
(305, 103, 203, 2, 1400.00);

select * from OrderDetails;

# Retrieve all order details for a specific order
select * from OrderDetails where OrderID = 101;

# Calculate total revenue generated from all orders
select sum(SubTotal) as Total_Revenue from OrderDetails;

# Retrieve the top 3 most ordered products
SELECT
    ProductID,
    SUM(Quantity) AS Total_Quantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;

# Count how many times a specific product has been sold
SELECT
    ProductID,
    COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 202
GROUP BY ProductID;

