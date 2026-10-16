# 🎓 Collection Manipulator – Student Data Organizer

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python&logoColor=white)
![Type](https://img.shields.io/badge/Type-CLI%20Application-green)
![Concepts](https://img.shields.io/badge/Concepts-List%20%7C%20Dict%20%7C%20Set%20%7C%20Tuple-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

A menu-driven **Python console application** that manages student records using Python's core collections: **lists, dictionaries, sets, and tuples**. It supports full **CRUD** operations (Create, Read, Update, Delete) plus a unique list of all subjects offered.

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Data Structures Used](#-data-structures-used)
- [Demo](#-demo)
- [Getting Started](#-getting-started)
- [Usage](#-usage)
- [Project Structure](#-project-structure)
- [Concepts Covered](#-concepts-covered)
- [Known Limitations](#-known-limitations)
- [Future Improvements](#-future-improvements)
- [Author](#-author)
- [License](#-license)

---

## 📌 Overview

**Student Data Organizer** is a simple command-line system for storing and managing student information in memory. It is designed to practise how different Python collections work together in a real-world style program.

Each student record stores an ID, name, age, grade, date of birth, and a set of subjects. The program runs in a loop until the user chooses to exit.

---

## ✨ Features

| # | Menu Option | Description |
|---|-------------|-------------|
| 1 | **Add Student** | Enter ID, name, age, grade, date of birth, and comma-separated subjects. |
| 2 | **Display All Students** | Shows every stored student in a clean, formatted layout. |
| 3 | **Update Student Information** | Find a student by ID and update name, age, grade, and subjects. |
| 4 | **Delete Student** | Remove a student record using their ID. |
| 5 | **Display Subjects Offered** | Lists all unique subjects across students in alphabetical order. |
| 6 | **Exit** | Closes the program with a farewell message. |

Additional highlights:

- 🔁 Continuous menu loop until the user exits
- 🧹 Subjects are cleaned with `.strip()`, so extra spaces are removed
- 🚫 Duplicate subjects are removed automatically using sets
- 🔎 Friendly messages when a student or subject list is empty or not found
- 🐍 Uses the modern `match-case` statement for menu handling

---

## 🧱 Data Structures Used

| Structure | Where It's Used | Why |
|-----------|-----------------|-----|
| **List** | `students = []` | Stores all student records in order. |
| **Dictionary** | One dictionary per student | Stores labelled fields (name, age, grade, etc.). |
| **Tuple** | `"Student Info": (s_id, dob)` | Holds ID and DOB as fixed, unchangeable values. |
| **Set** | `subjects` and `"Student Subjects"` | Keeps subjects unique with no duplicates. |

Example of one stored student record:

```python
{
    "Student Info": ("101", "19/04/2003"),   # (ID, DOB) tuple
    "Student Name": "Yaksh Patel",
    "Student Age": 23,
    "Student Grade": "A+",
    "Student Subjects": {"Maths", "Python", "Excel"}   # set
}
```

---

## 📸 Demo

### 1️⃣ Add Student
![Add Student](1.Add_Student_Data.png)

### 2️⃣ Display All Students
![Display All Students](2.Display_All_Students.png)

### 3️⃣ Update Student Details
![Update Student](3.Update_Student_Details.png)

### 4️⃣ Delete Student
![Delete Student](4.Delete_Students_Details.png)

### 5️⃣ Display Subjects Offered
![Subjects Offered](5.Display_Subjects_Offered.png)

### 6️⃣ Exit
![Exit](6.Exit.png)

---

## 🚀 Getting Started

### Prerequisites

- **Python 3.10 or higher** (required for the `match-case` statement)

Check your version:

```bash
python --version
```

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/<your-username>/collection-manipulator.git
   ```

2. **Navigate to the project folder**

   ```bash
   cd collection-manipulator
   ```

3. **Run the program**

   ```bash
   python PR__3_Collection_Manipulator.py
   ```

No external libraries are needed.

---

## 💻 Usage

On startup, the main menu is displayed:

```
STUDENT DATA ORGANIZER
============================================================

========== MAIN MENU ==========
1. Add Student
2. Display All Students
3. Update Student Information
4. Delete Student
5. Display Subjects Offered
6. Exit

Enter Your Choice :
```

### Add a Student

```
Enter Student ID : 101
Enter Student Name : Yaksh Patel
Enter Student Age : 23
Enter Student Grade : A+
Enter Date of Birth (DD/MM/YYYY) : 19/04/2003
Enter Subjects (comma separated) : Data Science, Maths, Data Analysis, Python, Excel

 Student Added Successfully!
```

### Display All Students

```
--------------------------------------------------
Student ID   : 101
Name         : Yaksh Patel
Age          : 23
Grade        : A+
DOB          : 19/04/2003
Subjects     : Maths, Data Analysis, Data Science, Excel, Python
```

### Display Subjects Offered

```
========= SUBJECTS OFFERED =========
• Data Analysis
• Data Science
• Excel
• Maths
• Python
```

---

## 📂 Project Structure

```
collection-manipulator/
│
├── PR__3_Collection_Manipulator.py 
│
├── 1__Add_Student_Data.png
├── 2__Display_All_Students.png
├── 3__Update_Student_Details.png
├── 4__Delete_Students_Details.png
├── 5__Display_Subjects_Offered.png
├── 6__Exit.png
└── README.md
```

---

## 🧠 Concepts Covered

- Lists, dictionaries, sets, and tuples working together
- CRUD operations on in-memory data
- `match-case` (structural pattern matching)
- Looping with `for` and `while`
- String handling: `split()`, `strip()`, `join()`
- f-strings for formatted output
- `sorted()` for ordered display
- Flag variables (`found`) for search logic

---

## ⚠️ Known Limitations

- **No data persistence**: all records are lost when the program closes.
- **No duplicate ID check**: two students can be added with the same ID.
- **Subjects list is not refreshed** after an update or delete, so a subject may still appear in "Subjects Offered" after no student takes it.
- **No input validation**: entering text where a number is expected (menu choice or age) will crash the program.
- Update asks for every field; there is no option to update only one.

---

## 🔮 Future Improvements

- [ ] Add input validation with `try / except`
- [ ] Prevent duplicate student IDs
- [ ] Rebuild the subjects set after update and delete
- [ ] Save and load data using a JSON or CSV file
- [ ] Add search and sort options (by name, grade, or age)
- [ ] Validate the date of birth format
- [ ] Refactor into functions or classes

---

## 👨‍💻 Author

**Yaksh Patel**

- GitHub: [@Yaksh-Codes]([https://github.com/your-username](https://github.com/Yaksh-Codes).

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

⭐ If you found this project helpful, consider giving it a star!
