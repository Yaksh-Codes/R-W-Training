
## 📁 Project Structure

```
multi_utility_toolkit/
│
├── main.py                        # Entry point — run this file to start the toolkit
├── README.md                      # This file
├── USER_GUIDE.md                  # Step-by-step usage guide with menu walkthroughs
├── sample_output.txt              # Example console session / log output
│
└── toolkit_package/                # Custom Python package
    ├── __init__.py                 # Package initializer
    ├── datetime_ops.py             # Datetime and Time Operations module
    ├── math_ops.py                 # Mathematical Operations module
    ├── random_ops.py               # Random Data Generation module
    ├── uuid_ops.py                 # UUID generation module
    ├── file_ops.py                 # Custom file operations module
    └── module_explorer.py          # Dynamic module attribute explorer (dir())
```

## ▶️ How to Run

Requires **Python 3.7+** (no external/third-party packages needed — everything uses the standard library).

```bash
cd multi_utility_toolkit
python main.py
```

You'll be greeted with the main menu:

```
========================================
Welcome to Multi-Utility Toolkit
========================================
Choose an option:
1. Datetime and Time Operations
2. Mathematical Operations
3. Random Data Generation
4. Generate Unique Identifiers (UUID)
5. File Operations (Custom Module)
6. Explore Module Attributes (dir())
7. Exit
========================================
Enter your choice:
```

## ✨ Features

### 1. Datetime and Time Operations (`datetime_ops.py`)
- Display current date and time
- Calculate the difference between two dates
- Format the current date/time using a custom `strftime` pattern
- Simple stopwatch (press Enter to start/stop)
- Countdown timer

### 2. Mathematical Operations (`math_ops.py`)
- Calculate factorial of a number
- Solve compound interest (principal, rate, time)
- Trigonometric calculations (sin, cos, tan)
- Area of geometric shapes (circle, rectangle, triangle)

### 3. Random Data Generation (`random_ops.py`)
- Generate a random number in a range
- Generate a random list of numbers
- Create a random password
- Generate a random numeric OTP

### 4. Generate Unique Identifiers (`uuid_ops.py`)
- Generate a UUID (version 4) — useful for uniquely identifying files, records, or user sessions

### 5. File Operations (`file_ops.py`)
A custom module demonstrating file handling:
- Create a new file
- Write data to a file (overwrite)
- Read content from a file
- Append data to a file

### 6. Explore Module Attributes (`module_explorer.py`)
- Dynamically import **any** built-in or custom module by name and list its available attributes/functions using Python's built-in `dir()` function.

## 🧱 Design Notes

- **Modularity:** Every feature area lives in its own module inside the `toolkit_package` package, keeping responsibilities cleanly separated and reusable.
- **Package structure:** `toolkit_package/__init__.py` turns the folder into an importable Python package (`from toolkit_package import math_ops`, etc.).
- **`__name__ == "__main__"` paradigm:** Every module can be run and tested independently (`python -m toolkit_package.math_ops`) while also being safely imported by `main.py` without auto-running its menu.
- **Error handling:** All user-input driven operations are wrapped in `try/except` blocks to gracefully handle invalid input (e.g., non-numeric entries, invalid dates, missing files).

## 📌 Requirements Checklist

| Requirement | Status |
|---|---|
| Datetime & Time module (display, diff, format, stopwatch, countdown) | ✅ |
| Math module (factorial, compound interest, trig, geometry) | ✅ |
| Random module (numbers, lists, passwords, OTPs) | ✅ |
| UUID generation | ✅ |
| Custom file operations module | ✅ |
| Package with `__init__.py` | ✅ |
| Dynamic module exploration via `dir()` | ✅ |
| `__name__`/`__main__` paradigm | ✅ |
| Menu-driven UI with Exit option | ✅ |
