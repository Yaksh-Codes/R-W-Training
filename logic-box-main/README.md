# 🧮 Logic Box – Pattern Generator & Number Analyzer

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python&logoColor=white)
![Type](https://img.shields.io/badge/Type-CLI%20Application-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

A beginner-friendly, menu-driven **Python console application** that generates star patterns and analyzes a range of numbers. Built using only core Python concepts: loops, conditionals, and user input.

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Demo](#-demo)
- [Getting Started](#-getting-started)
- [Usage](#-usage)
- [How It Works](#-how-it-works)
- [Project Structure](#-project-structure)
- [Concepts Used](#-concepts-used)
- [Future Improvements](#-future-improvements)
- [Author](#-author)
- [License](#-license)

---

## 📌 Overview

**Logic Box** is a simple command-line program that presents an interactive menu to the user. It demonstrates how nested loops, conditional statements, and arithmetic operators can be combined to solve common programming problems.

The program keeps running until the user chooses to exit.

---

## ✨ Features

| # | Feature | Description |
|---|---------|-------------|
| 1 | **Generate Pattern** | Prints a right-angled triangle of `*` for the number of rows entered. |
| 2 | **Analyze a Range of Numbers** | Checks every number between two values as **Even** or **Odd** and calculates the **sum** of all numbers in the range. |
| 3 | **Exit** | Closes the program gracefully. |

Additional highlights:

- 🔁 Continuous menu loop until the user exits
- ⚠️ Invalid menu choices are handled with a clear message
- 🧩 Uses only `while` loops, with no external libraries required

---

## 📸 Demo

### 1️⃣ Generate Pattern
![Generate Pattern](screenshots/1__Generate_Patterns.png)

### 2️⃣ Analyze a Range of Numbers
![Analyze a Range of Numbers](screenshots/2__Analyze_a_Range_of_Numbers.png)

### 3️⃣ Exit
![Exit](screenshots/3__Exit.png)

---

## 🚀 Getting Started

### Prerequisites

- [Python 3.x](https://www.python.org/downloads/) installed on your system

Check your installation:

```bash
python --version
```

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/<your-username>/logic-box.git
   ```

2. **Navigate to the project folder**

   ```bash
   cd logic-box
   ```

3. **Run the program**

   ```bash
   python PR_2_Logic_Box.py
   ```

---

## 💻 Usage

When the program starts, you will see:

```
Welcome to the Pattern Generator and Number Analyzer System..!

===== MENU =====
1. Generate Pattern
2. Analyze a Range of Numbers
3. Exit
Enter Your Choice:
```

### Option 1 – Generate Pattern

```
Enter Your Choice: 1
Enter End Number: 5

Pattern:

*
* *
* * *
* * * *
* * * * *
```

### Option 2 – Analyze a Range of Numbers

```
Enter Your Choice: 2
Enter First Number: 1
Enter Last Number: 5
Number 1 is Odd
Number 2 is Even
Number 3 is Odd
Number 4 is Even
Number 5 is Odd
Sum of Total Numbers from 1 to 5 is: 15
```

### Option 3 – Exit

```
Enter Your Choice: 3
Thank You! Program Closed.
```

---

## ⚙️ How It Works

**Pattern Generator**
- The outer loop controls the **rows** (1 to N).
- The inner loop prints `*` equal to the current row number.

**Number Analyzer**
- Loops from the **first** number to the **last** number.
- Uses the modulus operator (`num % 2 == 0`) to decide Even or Odd.
- Keeps a running `total` to calculate the sum of the range.

**Menu System**
- An infinite `while True` loop displays the menu.
- `if / elif / else` handles the selected option.
- `break` exits the loop when option 3 is chosen.

---

## 📂 Project Structure

```
logic-box/
│
├── PR_2_Logic_Box.py 
├
│── 1__Generate_Patterns.png
│── 2__Analyze_a_Range_of_Numbers.png
│── 3__Exit.png
└── README.md
```

---

## 🧠 Concepts Used

- `while` loops and nested loops
- `if` / `elif` / `else` conditions
- Modulus operator (`%`) for even/odd checking
- Accumulator variables (running sum)
- User input with `input()` and type conversion with `int()`
- Menu-driven program design

---

## 🔮 Future Improvements

- [ ] Add input validation using `try / except` to prevent crashes on non-numeric input
- [ ] Add more pattern types (inverted triangle, pyramid, number patterns)
- [ ] Show the count of even and odd numbers in the range
- [ ] Handle the case where the first number is greater than the last
- [ ] Refactor the code into reusable functions

---

## 👨‍💻 Author

**Yaksh Patel**

- GitHub: [@Yaksh-Codes](https://github.com/Yaksh-Codes)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

⭐ If you found this project helpful, consider giving it a star!
