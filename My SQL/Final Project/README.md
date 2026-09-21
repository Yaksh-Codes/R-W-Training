# 🎓 University Course Management System

A professional MySQL database project for managing university
**students, courses, instructors, departments, and enrollments**.

This project demonstrates practical SQL concepts including database
design, CRUD operations, constraints, joins, aggregate functions,
subqueries, grouping, filtering, date/string functions, `CASE`, and
window functions.

## 📌 Project Overview

**Database:** `UniversityCourseManagement`

The project contains 5 relational tables and 115 total records:

  Table           Purpose                        Records
  --------------- ---------------------------- ---------
  `Departments`   University departments               5
  `Students`      Student information                 15
  `Courses`       Course information                  15
  `Instructors`   Instructor information              10
  `Enrollments`   Student-course enrollments          70
  **Total**                                      **115**

## 🎯 Objectives

-   Design a relational university database.
-   Create tables with primary and foreign keys.
-   Insert and manage realistic sample data.
-   Perform complete CRUD operations.
-   Use filtering, sorting, grouping, and aggregation.
-   Work with `INNER JOIN` and `LEFT JOIN`.
-   Use subqueries and `HAVING`.
-   Apply date and string functions.
-   Demonstrate conditional logic with `CASE`.
-   Demonstrate SQL window aggregate functions.

## 🗂️ Database Relationships

``` text
Departments
   ├──< Courses
   └──< Instructors

Students
   └──< Enrollments >── Courses
```

-   One department can have many courses.
-   One department can have many instructors.
-   One student can enroll in many courses.
-   One course can have many students.
-   `Enrollments` acts as the bridge between `Students` and `Courses`.

## 🧱 Tables

### Departments

  Column             Type           Constraint
  ------------------ -------------- ------------------
  `DepartmentID`     INT            Primary Key
  `DepartmentName`   VARCHAR(100)   NOT NULL, UNIQUE

### Students

  Column             Type           Constraint
  ------------------ -------------- ------------------
  `StudentID`        INT            Primary Key
  `FirstName`        VARCHAR(50)    NOT NULL
  `LastName`         VARCHAR(50)    NOT NULL
  `Email`            VARCHAR(100)   NOT NULL, UNIQUE
  `BirthDate`        DATE           NOT NULL
  `EnrollmentDate`   DATE           NOT NULL

### Courses

  Column           Type           Constraint
  ---------------- -------------- -------------
  `CourseID`       INT            Primary Key
  `CourseName`     VARCHAR(100)   NOT NULL
  `DepartmentID`   INT            Foreign Key
  `Credits`        INT            NOT NULL

### Instructors

  Column           Type           Constraint
  ---------------- -------------- ------------------
  `InstructorID`   INT            Primary Key
  `FirstName`      VARCHAR(50)    NOT NULL
  `LastName`       VARCHAR(50)    NOT NULL
  `Email`          VARCHAR(100)   NOT NULL, UNIQUE
  `DepartmentID`   INT            Foreign Key

### Enrollments

  Column             Type   Constraint
  ------------------ ------ -------------
  `EnrollmentID`     INT    Primary Key
  `StudentID`        INT    Foreign Key
  `CourseID`         INT    Foreign Key
  `EnrollmentDate`   DATE   NOT NULL

## 🛠️ Technologies Used

-   MySQL
-   MySQL Workbench
-   SQL
-   Relational Database Management System (RDBMS)

## 📚 SQL Concepts Demonstrated

### Database & Table Operations

-   `CREATE DATABASE`
-   `CREATE TABLE`
-   `DROP DATABASE`
-   `INSERT`
-   `SELECT`
-   `UPDATE`
-   `DELETE`

### Constraints

-   `PRIMARY KEY`
-   `FOREIGN KEY`
-   `NOT NULL`
-   `UNIQUE`

### Filtering & Sorting

-   `WHERE`
-   `ORDER BY`
-   `LIMIT`

### Aggregate Functions

-   `COUNT()`
-   `AVG()`
-   `MAX()`
-   `SUM()`

### Other SQL Features

-   `GROUP BY`
-   `HAVING`
-   `INNER JOIN`
-   `LEFT JOIN`
-   Subqueries
-   `CONCAT()`
-   `YEAR()`
-   `ROUND()`
-   `DATE_SUB()`
-   `CASE`
-   `SUM() OVER()`

## 🔍 Assignment Queries

  ------------------------------------------------------------------------
                            \# Requirement           Main SQL Concept
  ---------------------------- --------------------- ---------------------
                             1 Perform CRUD          INSERT, SELECT,
                               operations on tables  UPDATE, DELETE

                             2 Retrieve students     WHERE
                               enrolled after 2022   

                             3 Retrieve Mathematics  JOIN, WHERE, LIMIT
                               courses with limit 5  

                             4 Courses with more     COUNT, GROUP BY,
                               than 5 students       HAVING

                             5 Students enrolled in  JOIN, GROUP BY,
                               both SQL and Data     HAVING
                               Structures            

                             6 Students enrolled in  DISTINCT, JOIN, IN
                               either SQL or Data    
                               Structures            

                             7 Average credits for   AVG
                               all courses           

                             8 Instructors in        COUNT, JOIN
                               Computer Science      

                             9 Students enrolled in  COUNT, GROUP BY
                               each department       

                            10 Students and          INNER JOIN
                               corresponding courses 

                            11 All students and      LEFT JOIN
                               corresponding courses 

                            12 Students in courses   Subquery, HAVING
                               with more than 10     
                               students              

                            13 Extract enrollment    YEAR
                               year                  

                            14 Concatenate           CONCAT
                               instructor first and  
                               last name             

                            15 Running total of      Window Function
                               students enrolled in  
                               courses               

                            16 Label students as     CASE, DATE_SUB
                               Senior or Junior      
  ------------------------------------------------------------------------

## 🚀 How to Run

### 1. Install MySQL

Install MySQL Server and MySQL Workbench.

### 2. Open MySQL Workbench

Connect to your MySQL server.

### 3. Open the SQL file

Open:

``` text
University_Course_Management.sql
```

### 4. Execute the script

Run the complete script. It will:

1.  Drop the old database if it exists.
2.  Create `UniversityCourseManagement`.
3.  Create all 5 tables.
4.  Create primary/foreign key relationships.
5.  Insert all sample data.
6.  Verify the tables.
7.  Demonstrate CRUD operations.
8.  Execute all 16 assignment queries.

### 5. Verify

``` sql
USE UniversityCourseManagement;

SHOW TABLES;
```

Expected tables:

``` text
Courses
Departments
Enrollments
Instructors
Students
```

## 📊 Verify Record Counts

``` sql
SELECT 'Departments' AS TableName, COUNT(*) AS TotalRecords
FROM Departments
UNION ALL
SELECT 'Students', COUNT(*) FROM Students
UNION ALL
SELECT 'Courses', COUNT(*) FROM Courses
UNION ALL
SELECT 'Instructors', COUNT(*) FROM Instructors
UNION ALL
SELECT 'Enrollments', COUNT(*) FROM Enrollments;
```

Expected:

``` text
Departments    5
Students       15
Courses        15
Instructors    10
Enrollments    70
```

## 🧪 Example Queries

### Find Computer Science Courses

``` sql
SELECT
    c.CourseID,
    c.CourseName,
    c.Credits
FROM Courses c
JOIN Departments d
    ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';
```

### Find Students in Introduction to SQL

``` sql
SELECT
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName
FROM Students s
JOIN Enrollments e
    ON s.StudentID = e.StudentID
JOIN Courses c
    ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Introduction to SQL';
```

### Count Students in Each Course

``` sql
SELECT
    c.CourseName,
    COUNT(e.StudentID) AS TotalStudents
FROM Courses c
LEFT JOIN Enrollments e
    ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName;
```

## 📁 Recommended GitHub Structure

``` text
MYSQL/
└── University Course Management/
    ├── Code/
    │   └── University_Course_Management.sql
    ├── Screenshots/
    │   ├── 1. Perform CRUD Operations on all tables.png
    │   ├── 2. Retrieve students who enrolled after 2022.png
    │   ├── 3. Retrieve courses offered by the Mathematics department with a LIMIT of 5 courses7.png
    │   ├── 4. Get the number of students enrolled in each course, filtering for courses with more than 5 students.png
    │   ├── 5. Find students who are enrolled in BOTH Introduction to SQL and Data Structures.png
    └── README.md
```

## 📸 Screenshots

Recommended MySQL Workbench screenshots:

1.  Perform CRUD Operations on all tables
2.  Retrieve students who enrolled after 2022
3.  Retrieve courses offered by the Mathematics department with a LIMIT of 5 courses
4.  Get the number of students enrolled in each course, filtering for courses with more than 5 students
5.  Find students who are enrolled in BOTH Introduction to SQL and Data Structures

Store them in the `Screenshots` directory using descriptive filenames.

## 📈 Project Highlights

-   ✅ 5 relational tables
-   ✅ 115 total records
-   ✅ 15 students
-   ✅ 15 courses
-   ✅ 10 instructors
-   ✅ 5 departments
-   ✅ 70 enrollments
-   ✅ Primary and foreign key relationships
-   ✅ Complete CRUD operations
-   ✅ 16 assignment queries
-   ✅ INNER JOIN and LEFT JOIN
-   ✅ GROUP BY and HAVING
-   ✅ Subqueries
-   ✅ Aggregate functions
-   ✅ Date and string functions
-   ✅ CASE expression
-   ✅ Window aggregate function

## 🎓 Learning Outcomes

This project provides practical experience in:

-   Relational database design
-   SQL table creation
-   Data insertion and manipulation
-   Primary and foreign key relationships
-   Data integrity
-   CRUD operations
-   Data filtering and sorting
-   Aggregate analysis
-   Multi-table joins
-   Subqueries
-   Grouped analysis
-   Date and string manipulation
-   Conditional SQL logic
-   Analytical window functions

## 👨‍💻 Author

**Yaksh Patel**

Data Science & SQL Learner

**Interests:** Data Science · Data Analytics · SQL · Python · Machine
Learning · Database Management · Data Visualization

## 📜 Project Type

**Academic / Final SQL Project**

Created for educational, practical, and portfolio purposes as part of
SQL/Data Science coursework.

## ⭐ Acknowledgment

Developed as part of the **Red & White Skill Education -- SQL / Data
Science coursework**.

## 📄 License

This project is intended for educational and portfolio purposes.
