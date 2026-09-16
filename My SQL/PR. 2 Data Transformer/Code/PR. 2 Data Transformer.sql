create database data_transformer;

use Data_Transformer;

create table Customers
( CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate DATE NOT NULL
);

INSERT INTO Customers
    (CustomerID, FirstName, LastName, Email, RegistrationDate) VALUES
    (1, 'Yaksh', 'Patel', 'yaksh.patel@email.com', '2022-03-15'),
    (2, 'Havan', 'Smith', 'havan.smith@email.com', '2021-11-02'),
    (3, 'Priyank', 'Chopara', 'priyank.chopara@email.com', '2020-09-08'),
    (4, 'Prasen', 'Mehta', 'prasen.mehta@email.com', '2019-05-04'),
    (5, 'Tirth', 'Desai', 'tirth.desai@email.com', '2018-01-31');
    
select * from Customers

create table Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

insert into Orders (OrderID,CustomerID,OrderDate,TotalAmount)
values
	(101, 1, '2023-07-01', 150.50),
    (102, 2, '2023-07-03', 200.75),
    (103, 3, '2023-07-05', 250.50),
    (104, 4, '2023-07-07', 300.75),
    (105, 5, '2023-07-09', 500.50);
    
select * from Orders

create table Employees (
	EmployeeID INT PRIMARY KEY,
     FirstName VARCHAR(50),
     LastName VARCHAR(50),
     Department VARCHAR(50),
     HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

insert into Employees
	(EmployeeID, FirstName, LastName, Department, HireDate, Salary)
VALUES
	(1, 'Mark', 'Jones', 'Sales', '2020-01-15', 50000.00),
    (2, 'Susan', 'Lee', 'HR', '2021-03-20', 55000.00),
    (3, 'Prince', 'Leo', 'IT', '2018-01-09', 80000.00),
    (4, 'Jay', 'Desai', 'Sales', '2020-06-25', 45000.00),
    (5, 'Vraj', 'Solanki', 'Accountant', '2026-05-05', 60000.00);
    
select * from Employees

# Query1 - INNER JOIN

select o.OrderID, o.OrderDate, o.TotalAmount, c.CustomerID, c.FirstName, c.LastName, c.Email from Orders as o 
INNER JOIN Customers as c on o.CustomerID = c.CustomerID;
    
# Query2 - LEFT JOIN

select c.CustomerID, c.FirstName, c.LastName, c.Email, o.OrderID, o.OrderDate, o.TotalAmount from Customers as c
LEFT JOIN Orders as o on c.CustomerID = o.CustomerID
    
# Query 3 - RIGHT JOIN

select o.OrderID, o.OrderDate, o.TotalAmount, c.CustomerID, c.FirstName, c.LastName, c.Email from Customers as c
RIGHT JOIN Orders as o on c.CustomerID = o.CustomerID;

# Query 4 - FULL OUTER JOIN

select c.CustomerID, c.FirstName, c.LastName, c.Email, o.OrderID, o.OrderDate, o.TotalAmount from Customers as c
LEFT JOIN Orders as o on c.CustomerID = o.CustomerID

UNION

select c.CustomerID, c.FirstName, c.LastName, c.Email, o.OrderID, o.OrderDate, o.TotalAmount from Customers as c
RIGHT JOIN Orders as o on c.CustomerID = o.CustomerID;

# Query 5 - Orders Greater Than Average Order Amount

select c.CustomerID, c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.TotalAmount from Customers as c
INNER JOIN Orders as o on c.CustomerID = o.CustomerID
where o.TotalAmount > (select avg(TotalAmount) from Orders
);

select avg(TotalAmount) as Average_Order_Amount from Orders;

# Query 6 - Employees Above Average Salary

select EmployeeID, FirstName, LastName, Department, HireDate, Salary from Employees where Salary > (select avg(Salary) from Employees );

# Query 7 - Average Salary

select round(avg(Salary), 2) as Avarage_Salary from Employees;

# Query 8 - Employee Tenure

select EmployeeID, FirstName, LastName, HireDate, CURDATE() as CurrentDate, DATEDIFF(CURDATE(), HireDate) as DaysWorked from Employees;

# Query 9 - Format Order Date

select OrderID, CustomerID, OrderDate, DATE_FORMAT(OrderDate, '%d-%m-%Y') as FormattedOrderDate, TotalAmount from Orders;

# Query 10 - Concatenate First Name and Last Name

select CustomerID, CONCAT(FirstName, ' ', LastName) as FullName, Email from Customers;

# Query 11 - Replace Part of a String

select CustomerID, FirstName, replace(FirstName, 'Yaksh', 'RockY') as UpdatedFirstName, LastName from Customers;

# Query 12 - Uppercase First Name and Lowercase Last Name

select CustomerID, UPPER(FirstName) as Uppercase_FirstName, LOWER(LastName) as Lowercase_LastName from Customers;

# Query 13 - Full Name from Email

select CustomerID, Email, replace(SUBSTRING_INDEX(Email, '@', 1), '.', ' ') as Full_Name from Customers;

# Query 14 - Calculate Total Order Amount

select ROUND(SUM(TotalAmount), 2) as TotalOrderAmount from Orders;

# Query 15 - Rank Orders Using RANK()

select OrderID, CustomerID, OrderDate, TotalAmount, rank() over (ORDER BY TotalAmount desc) as OrderRank from Orders;

# Query 16 - Assign Discount Based on Total Amount

select OrderID, CustomerID, TotalAmount, case
        when TotalAmount > 500 then TotalAmount * 0.05
        when TotalAmount >= 100 then TotalAmount * 0.10
        else 0
    end as DiscountAmount from Orders;

# Query 17 - Categorize Employee Salaries

select EmployeeID, FirstName, LastName, Department, Salary, 
	case
        when Salary >= 60000 then 'High'
        when Salary >= 50000 then 'Medium'
        else 'Low'
    end as SalaryCategory from Employees;