# NumPy Analyzer

A menu-driven **NumPy Analyzer** built with Python and Object-Oriented Programming (OOP). This project demonstrates practical NumPy operations for array creation, manipulation, mathematical calculations, searching, sorting, filtering, aggregation, and statistical analysis.

## 📌 Project Overview

**NumPy Analyzer** is a console-based Python application designed to perform common operations on NumPy arrays through an interactive menu.

The project combines:

* **NumPy** for numerical and array operations
* **Object-Oriented Programming (OOP)** for clean and reusable code
* **Exception handling** for reliable user input
* **Interactive menus** for easy navigation

It is suitable for learning and demonstrating fundamental **Python, NumPy, and OOP concepts**.

## 🎯 Objectives

* Create and manipulate 1D, 2D, and 3D NumPy arrays.
* Perform mathematical operations on arrays.
* Apply indexing and slicing techniques.
* Combine and split arrays.
* Search, sort, and filter array elements.
* Calculate statistical properties of datasets.
* Demonstrate classes, objects, class methods, and static methods.
* Build a practical menu-driven Python application.

## ✨ Features

### 1. Array Creation

Create:

* 1D arrays
* 2D arrays
* 3D arrays

The program accepts user-defined dimensions and values.

### 2. Array Management

Supports:

* Indexing
* Slicing
* Accessing individual elements
* Working with different array dimensions

### 3. Mathematical Operations

Perform:

* Addition
* Subtraction
* Multiplication
* Division

The program validates array sizes and prevents invalid operations such as division by zero.

### 4. Combine and Split Arrays

Combine arrays using:

* Concatenation
* Vertical stacking
* Horizontal stacking
* Axis-based concatenation

Split arrays into multiple sections using NumPy's array-splitting functionality.

### 5. Search, Sort, and Filter

The application supports:

* Searching for specific values
* Ascending sorting
* Descending sorting
* Filtering using conditions
* Greater than
* Less than
* Equal to
* Greater than or equal to
* Less than or equal to

### 6. Aggregation and Statistics

Calculate:

* Sum
* Mean
* Median
* Standard Deviation
* Variance
* Percentiles
* Correlation Coefficient

## 🧠 OOP Concepts Used

The project demonstrates several important Object-Oriented Programming concepts.

### Class

The main functionality is organized inside the:

```python
NumPyAnalyzer
```

class.

### Constructor

The `__init__()` method initializes the NumPy array.

```python
def __init__(self, array=None):
    self.array = np.asarray(array) if array is not None else None
```

### Class Method

The project uses `@classmethod` to create an analyzer object from an existing NumPy array.

```python
@classmethod
def from_array(cls, array):
    return cls(np.asarray(array))
```

### Static Method

Utility functions that do not depend on an object instance are implemented using `@staticmethod`.

```python
@staticmethod
def format_array(array):
    ...
```

### Encapsulation

Array operations are organized inside the `NumPyAnalyzer` class, keeping related data and functionality together.

## 🛠️ Technologies Used

| Technology       | Purpose                                   |
| ---------------- | ----------------------------------------- |
| Python           | Core programming language                 |
| NumPy            | Numerical computing and array operations  |
| Jupyter Notebook | Interactive development and demonstration |
| Git & GitHub     | Version control and project hosting       |

## 📂 Project Structure

```text
NumPy-Analyzer/
│
├── numpy_analyzer.py
├── numpy_analyzer.ipynb
├── README.md
└── screenshots/
    ├── array_creation.png
    ├── mathematical_operations.png
    ├── combine_arrays.png
    ├── search_sort_filter.png
    └── statistics.png
```

## ⚙️ Installation

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/numpy-analyzer.git
```

### 2. Navigate to the Project

```bash
cd numpy-analyzer
```

### 3. Install NumPy

```bash
pip install numpy
```

Or:

```bash
python -m pip install numpy
```

## ▶️ How to Run

### Option 1 — Python

Run:

```bash
python numpy_analyzer.py
```

### Option 2 — Jupyter Notebook

Start Jupyter Notebook:

```bash
jupyter notebook
```

Then open:

```text
numpy_analyzer.ipynb
```

Run the code cell and follow the interactive menu.

## 🖥️ Example Console Interaction

```text
Welcome to the NumPy Analyzer!
===================================

Choose an option:
1. Create a NumPy Array
2. Perform Mathematical Operations
3. Combine or Split Arrays
4. Search, Sort, or Filter Arrays
5. Compute Aggregates and Statistics
6. Exit

Enter your choice: 1
```

### Example: Creating a 2D Array

```text
Select the type of array to create:
1. 1D Array
2. 2D Array
3. 3D Array

Enter your choice: 2

Enter the number of rows: 2
Enter the number of columns: 3

Enter 6 elements for the array (all elements separated by space):
10 20 30 40 50 60

Array created successfully:
[[10 20 30]
 [40 50 60]]
```

### Example: Mathematical Operation

```text
Choose a mathematical operation:
1. Addition
2. Subtraction
3. Multiplication
4. Division

Enter your choice: 1

Enter 6 elements for the array (all elements separated by space):
5 5 5 5 5 5

Result of Addition:
[[15 25 35]
 [45 55 65]]
```

### Example: Statistics

```text
Choose an aggregate/statistical operation:
1. Sum
2. Mean
3. Median
4. Standard Deviation
5. Variance
6. Percentiles
7. Correlation Coefficient

Enter your choice: 3

Median of Array: 35.0
```

## 📊 Operations Summary

| Category            | Operations                                      |
| ------------------- | ----------------------------------------------- |
| Array Creation      | 1D, 2D, 3D                                      |
| Array Management    | Indexing, Slicing                               |
| Mathematical        | Addition, Subtraction, Multiplication, Division |
| Array Combination   | Concatenate, Vertical Stack, Horizontal Stack   |
| Array Splitting     | Split by sections/axis                          |
| Searching           | Search for values                               |
| Sorting             | Ascending, Descending                           |
| Filtering           | Conditional filtering                           |
| Aggregation         | Sum, Mean                                       |
| Statistics          | Median, Standard Deviation, Variance            |
| Advanced Statistics | Percentiles, Correlation                        |

## 🔐 Input Validation

The application includes error handling for:

* Invalid numeric input
* Incorrect number of array elements
* Invalid menu selections
* Invalid indexes
* Invalid slicing ranges
* Division by zero
* Invalid dimensions
* Invalid statistical parameters

This makes the application more robust and user-friendly.

## 📚 Learning Outcomes

After completing this project, you will understand:

* NumPy array creation and manipulation
* Array indexing and slicing
* NumPy broadcasting and arithmetic
* Array concatenation and splitting
* Searching and filtering NumPy arrays
* Statistical functions in NumPy
* Python classes and objects
* Constructors
* Class methods
* Static methods
* Encapsulation
* Exception handling
* Menu-driven application development

## 🚀 Future Improvements

Possible enhancements include:

* Add a graphical user interface using Tkinter.
* Add Pandas DataFrame support.
* Add Matplotlib data visualization.
* Export analysis results to CSV or Excel.
* Add dataset/file upload functionality.
* Add automated unit tests.
* Add more advanced statistical operations.
* Add logging functionality.

## 👨‍💻 Author

**Yaksh Patel**

Python | NumPy | Data Analysis | Machine Learning

## ⭐ Support

If you find this project useful for learning Python, NumPy, or Data Analysis, consider giving the repository a ⭐ on GitHub.

## 📄 License

This project is intended for educational and learning purposes.
