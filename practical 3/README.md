# Employee Management System (Python OOP)

## Overview

The Employee Management System is a menu-driven console application developed in Python to demonstrate the fundamental concepts of Object-Oriented Programming (OOP).

The project allows users to create and manage Person, Employee, and Manager objects while implementing inheritance, encapsulation, constructors, destructors, method overriding, getter & setter methods, `super()`, and `issubclass()`.

---

## Features

- Create a Person
- Create an Employee
- Create a Manager
- Display stored details
- Encapsulation using private attributes
- Getter & Setter methods
- Constructor and Destructor
- Inheritance
- Method Overriding
- Menu-driven Interface
- Runtime object creation
- Parent constructor using `super()`
- Inheritance verification using `issubclass()`

---

## Technologies Used

- Python 3.x
- Object-Oriented Programming
- VS Code / PyCharm

---

## OOP Concepts Covered

| Concept | Implementation |
|----------|----------------|
| Class | Person, Employee, Manager |
| Object | Multiple object creation |
| Inheritance | Employee → Person |
| Multilevel Inheritance | Manager → Employee |
| Encapsulation | Private Employee ID & Salary |
| Constructor | `__init__()` |
| Destructor | `__del__()` |
| Getter & Setter | Employee ID and Salary |
| Method Overriding | display() |
| super() | Parent constructor |
| issubclass() | Class relationship |

---

## Class Hierarchy

                Person
                   │
            ┌──────┴──────┐
            │             │
        Employee
            │
        Manager

---

## Installation

Clone the repository

```bash
git clone https://github.com/yourusername/employee-management-system-python-oop.git
```

Move into the project folder

```bash
cd employee-management-system-python-oop
```

Run the application

```bash
python employee_management.py
```

---

## Project Structure

```
employee-management-system-python-oop/
│
├── employee_management.py
├── README.md
├── LICENSE
├── requirements.txt
├── screenshots/
└── docs/
```

---

## Sample Outputs

### Main Menu

![Main Menu](screenshots/output1.png)

---

### Create Person

Name : Yaksh Patel

Age : 23

---

### Create Employee

Employee ID : 13895

Salary : ₹100000

---

### Create Manager

Department : Data Science & Analyst

---

### Show Employee Details

Displays complete employee information using the overridden `display()` method.

---

### Exit Program

Gracefully destroys created objects and exits the application.

---

## Learning Outcomes

This project demonstrates practical implementation of:

- Classes & Objects
- Encapsulation
- Inheritance
- Method Overriding
- Constructors
- Destructors
- Getter & Setter Methods
- Parent Class using `super()`
- Runtime Object Creation
- Menu-driven Programs

---

## Future Improvements

- Developer Class
- Search Employee
- Update Employee
- Delete Employee
- File Handling (CSV/JSON)
- SQLite Database
- Login System
- Tkinter GUI
- Flask Web Application

---

## Author

**Yaksh Patel**
Aspiring Data Analyst | Python Developer

---

## License

This project is licensed under the MIT License.
