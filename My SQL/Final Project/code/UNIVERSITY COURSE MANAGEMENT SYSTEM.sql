# UCMS means University Cource Management System
create database UCMS;

use UCMS;

# Create Tables
# Departments Table

create table Departments( DepartmentID INT primary key, DepartmentName varchar(100));

# Students Table

create table Students( StudentID INT primary key, FirstName varchar(50), LastName varchar(50), Email varchar(100), Birthday DATE, EnrollmentDate Date);

# Cources Table

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,
    Credits INT NOT NULL,
    
    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);

# Instruction Table

create table Instructions (InstructorID INT primary key, FirstName varchar(100), LastName varchar(100),   Email varchar(100), DepartmentID INT, foreign key (DepartmentID) references Departments(DepartmentID));


# Enrollments Table 

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    
    FOREIGN KEY (StudentID)
        REFERENCES Students(StudentID),
        
    FOREIGN KEY (CourseID)
        REFERENCES Courses(CourseID)
);

# Instert the values in table 
# Departments

insert into Departments
(DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'Business Administration');

# Students

insert into Students
(StudentID, FirstName, LastName, Email, Birthday, EnrollmentDate)
VALUES
(1, 'John', 'Doe', 'john.doe@gmail.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane.smith@gmail.com', '1999-05-25', '2021-08-01'),
(3, 'Rahul', 'Patel', 'rahul.patel@gmail.com', '2001-03-10', '2023-07-15'),
(4, 'Priya', 'Shah', 'priya.shah@gmail.com', '2000-11-20', '2024-08-01'),
(5, 'Amit', 'Mehta', 'amit.mehta@gmail.com', '1999-09-12', '2022-07-20'),
(6, 'Neha', 'Joshi', 'neha.joshi@gmail.com', '2001-06-18', '2023-08-10'),
(7, 'Ravi', 'Desai', 'ravi.desai@gmail.com', '2000-12-05', '2021-07-25'),
(8, 'Sneha', 'Patel', 'sneha.patel@gmail.com', '2002-02-14', '2024-07-01'),
(9, 'Karan', 'Sharma', 'karan.sharma@gmail.com', '2001-08-22', '2022-08-05'),
(10, 'Pooja', 'Trivedi', 'pooja.trivedi@gmail.com', '2000-04-30', '2023-07-10');

# Courses

insert into Courses
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(101, 'Introduction to SQL',    1, 3),
(102, 'Data Structures',        1, 4),
(103, 'Database Management',    1, 3),
(104, 'Python Programming',     1, 4),
(105, 'Machine Learning',       1, 4),

(201, 'Calculus',               2, 4),
(202, 'Linear Algebra',         2, 3),
(203, 'Statistics',             2, 3),
(204, 'Discrete Mathematics',   2, 4),
(205, 'Probability Theory',     2, 3),

(301, 'Classical Physics',      3, 4),
(302, 'Quantum Physics',        3, 4),

(401, 'Organic Chemistry',      4, 4),
(402, 'Inorganic Chemistry',    4, 3),

(501, 'Business Management',    5, 3);

# Instructions

insert into Instructions
(InstructorID, FirstName, LastName, Email, DepartmentID)
VALUES
(1,  'Alice',   'Johnson',  'alice.johnson@university.com',   1),
(2,  'Bob',     'Lee',      'bob.lee@university.com',         1),
(3,  'David',   'Brown',    'david.brown@university.com',     1),
(4,  'Emily',   'Davis',    'emily.davis@university.com',     1),
(5,  'Michael', 'Wilson',   'michael.wilson@university.com',  1),

(6,  'Sarah',   'Miller',   'sarah.miller@university.com',    2),
(7,  'Robert',  'Taylor',   'robert.taylor@university.com',   2),

(8,  'Laura',   'Anderson', 'laura.anderson@university.com',  3),
(9,  'James',   'Thomas',   'james.thomas@university.com',    4),
(10, 'Emma',    'Martin',   'emma.martin@university.com',     5);


# Enrollments

insert into Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, 101, '2022-08-01'),
(2, 1, 102, '2022-08-01'),
(3, 1, 201, '2022-08-02'),

(4, 2, 101, '2021-08-01'),
(5, 2, 102, '2021-08-01'),
(6, 2, 103, '2021-08-02'),
(7, 2, 201, '2021-08-03'),

(8, 3, 101, '2023-07-15'),
(9, 3, 102, '2023-07-15'),
(10, 3, 103, '2023-07-16'),
(11, 3, 202, '2023-07-17'),

(12, 4, 101, '2024-08-01'),
(13, 4, 104, '2024-08-01'),
(14, 4, 203, '2024-08-02'),

(15, 5, 101, '2022-07-20'),
(16, 5, 102, '2022-07-20'),
(17, 5, 105, '2022-07-21'),
(18, 5, 201, '2022-07-22'),

(19, 6, 101, '2023-08-10'),
(20, 6, 102, '2023-08-10'),
(21, 6, 103, '2023-08-11'),

(22, 7, 101, '2021-07-25'),
(23, 7, 102, '2021-07-25'),
(24, 7, 104, '2021-07-26'),
(25, 7, 202, '2021-07-27'),

(26, 8, 104, '2024-07-01'),
(27, 8, 105, '2024-07-01'),
(28, 8, 203, '2024-07-02'),

(29, 9, 101, '2022-08-05'),
(30, 9, 102, '2022-08-05'),
(31, 9, 103, '2022-08-06'),
(32, 9, 105, '2022-08-07'),

(33, 10, 101, '2023-07-10'),
(34, 10, 102, '2023-07-10'),
(35, 10, 104, '2023-07-11');

# Verify all tables values

select * from Departments;

select * from Students;

select * from Courses;

select * from Instructions;

select * from Enrollments;

#  QUERY 1: Perform CRUD Operations on all tables

insert into Students (StudentID, FirstName, LastName, Email, Birthday, EnrollmentDate)
VALUES
(16, 'Vivek', 'Shah', 'vivek.shah@gmail.com','2002-05-15', '2025-08-01');
#read
select * from Students;
#update
update Students set Email = 'vivek.updated@gmail.com' WHERE StudentID = 16;
#delete
delete from Students WHERE StudentID = 16;

/* CRUD ON DEPARTMENTS */

insert into Departments (DepartmentID, DepartmentName) VALUES (6, 'Economics');

select * from Departments WHERE DepartmentID = 6;

update Departments set DepartmentName = 'Economics and Finance' WHERE DepartmentID = 6;

delete from Departments WHERE DepartmentID = 6;

/* CRUD ON COURSES */

insert into Courses (CourseID, CourseName, DepartmentID, Credits) VALUES (601, 'Financial Economics', 5, 3);

select * from Courses WHERE CourseID = 601;

update Courses set CourseName = 'Advanced Financial Economics' WHERE CourseID = 601;

delete from Courses WHERE CourseID = 601;

/* CRUD ON INSTRUCTORS */

insert into Instructions (InstructorID, FirstName, LastName, Email, DepartmentID) VALUES (11, 'Daniel', 'Clark', 'daniel.clark@university.com', 5);

select * from Instructions WHERE InstructorID = 11;

update Instructions set LastName = 'Cooper' WHERE InstructorID = 11;

delete from Instructions WHERE InstructorID = 11;

# QUERY 2: Retrieve students who enrolled after 2022


SELECT
    StudentID,
    FirstName,
    LastName,
    Email,
    EnrollmentDate
FROM Students
WHERE EnrollmentDate > '2022-12-31'
ORDER BY EnrollmentDate;

# QUERY 3: Retrieve courses offered by the Mathematics department with a LIMIT of 5 courses

SELECT
    c.CourseID,
    c.CourseName,
    c.DepartmentID,
    c.Credits
FROM Courses c
INNER JOIN Departments d
    ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

# QUERY 4: Get the number of students enrolled in each course, filtering for courses with more than 5 students.

SELECT
    c.CourseID,
    c.CourseName,
    COUNT(e.StudentID) AS TotalStudents
FROM Courses c
INNER JOIN Enrollments e
    ON c.CourseID = e.CourseID
GROUP BY
    c.CourseID,
    c.CourseName
HAVING COUNT(e.StudentID) > 5
ORDER BY TotalStudents DESC;

# QUERY 5: Find students who are enrolled in BOTH Introduction to SQL and Data Structures.

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName
FROM Students s
INNER JOIN Enrollments e
    ON s.StudentID = e.StudentID
INNER JOIN Courses c
    ON e.CourseID = c.CourseID
WHERE c.CourseName IN
(
    'Introduction to SQL',
    'Data Structures'
)
GROUP BY
    s.StudentID,
    s.FirstName,
    s.LastName
HAVING COUNT(DISTINCT c.CourseName) = 2;

# QUERY 6: Find students who are enrolled in EITHER Introduction to SQL or Data Structures.

SELECT DISTINCT
    s.StudentID,
    s.FirstName,
    s.LastName
FROM Students s
INNER JOIN Enrollments e
    ON s.StudentID = e.StudentID
INNER JOIN Courses c
    ON e.CourseID = c.CourseID
WHERE c.CourseName IN
(
    'Introduction to SQL',
    'Data Structures'
)
ORDER BY s.StudentID;

#  QUERY 7: Calculate the average number of credits for all courses.

SELECT ROUND(AVG(Credits), 2) AS AverageCredits FROM Courses;

# QUERY 8: Find the number of instructors in the Computer Science department.

SELECT
    d.DepartmentName,
    COUNT(i.InstructorID) AS TotalInstructors
FROM Departments d
INNER JOIN Instructions i
    ON d.DepartmentID = i.DepartmentID
WHERE d.DepartmentName = 'Computer Science'
GROUP BY d.DepartmentID, d.DepartmentName;

# QUERY 9: Count the number of students enrolled in each department.

SELECT
    d.DepartmentID,
    d.DepartmentName,
    COUNT(DISTINCT e.StudentID) AS TotalStudents
FROM Departments d
INNER JOIN Courses c
    ON d.DepartmentID = c.DepartmentID
INNER JOIN Enrollments e
    ON c.CourseID = e.CourseID
GROUP BY
    d.DepartmentID,
    d.DepartmentName
ORDER BY TotalStudents DESC;

# QUERY 10: INNER JOIN: Retrieve students and their corresponding courses.

SELECT
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    c.CourseID,
    c.CourseName,
    c.Credits
FROM Students s
INNER JOIN Enrollments e
    ON s.StudentID = e.StudentID
INNER JOIN Courses c
    ON e.CourseID = c.CourseID
ORDER BY
    s.StudentID,
    c.CourseID;
    
# QUERY 11: LEFT JOIN: Retrieve all students and their corresponding courses, if any.

SELECT
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName) AS StudentName,
    c.CourseID,
    c.CourseName
FROM Students s
LEFT JOIN Enrollments e
    ON s.StudentID = e.StudentID
LEFT JOIN Courses c
    ON e.CourseID = c.CourseID
ORDER BY s.StudentID;

# QUERY 12: SUBQUERY: Find students who are enrolled in courses that have more than 10 students.

SELECT DISTINCT
    s.StudentID,
    s.FirstName,
    s.LastName,
    s.Email
FROM Students s
INNER JOIN Enrollments e
    ON s.StudentID = e.StudentID
WHERE e.CourseID IN
(
    SELECT CourseID
    FROM Enrollments
    GROUP BY CourseID
    HAVING COUNT(StudentID) > 10
)
ORDER BY s.StudentID;

#  QUERY 13: Extract the year from the EnrollmentDate of students.

SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate,
    YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students
ORDER BY EnrollmentYear;

#  QUERY 14: Concatenate instructor's first name and last name.

SELECT
    InstructorID,
    CONCAT(FirstName, ' ', LastName) AS InstructorName,
    Email
FROM Instructions
ORDER BY InstructorID;

# QUERY 15: Calculate the running total of students enrolled in courses. Uses a Window Aggregate Function.

SELECT
    CourseID,
    CourseName,
    TotalStudents,

    SUM(TotalStudents) OVER (
        ORDER BY CourseID
        
    ) AS RunningTotal

FROM
(
    SELECT
        c.CourseID,
        c.CourseName,
        COUNT(e.StudentID) AS TotalStudents
    FROM Courses c
    LEFT JOIN Enrollments e
        ON c.CourseID = e.CourseID
    GROUP BY
        c.CourseID,
        c.CourseName
) AS CourseSummary

ORDER BY CourseID;

# QUERY 16: Label students as Senior or Junior. If the enrollment date is more than 4 years ago: Senior Otherwise: Junior

SELECT
    StudentID,
    FirstName,
    LastName,
    EnrollmentDate,

    CASE
        WHEN EnrollmentDate <
             DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
        THEN 'Senior'

        ELSE 'Junior'
    END AS StudentStatus

FROM Students
ORDER BY EnrollmentDate;

