# COVID-19 Data Analysis — Python & Pandas

A professional **Exploratory Data Analysis (EDA)** project using global COVID-19 data to identify trends in cases, deaths, countries, WHO regions, and time periods.

## 📌 Project Overview

This project analyzes COVID-19 reported data using **Python, Pandas, NumPy, Matplotlib, and Seaborn**.

The analysis focuses on:

* Data cleaning and preprocessing
* Missing-value analysis
* Duplicate detection
* Descriptive statistics
* Country-level COVID-19 analysis
* WHO regional analysis
* Monthly and yearly trends
* COVID-19 case and death analysis
* Case Fatality Rate (CFR)
* Correlation analysis
* Distribution analysis
* India-specific analysis
* 7-day moving averages
* Peak case and death identification
* Data-quality assessment

The project is designed as a **Data Analyst portfolio project** and demonstrates practical skills in Python-based data analysis.

---

## 📊 Dataset

The dataset contains daily COVID-19 information reported by countries and WHO regions.

### Dataset Columns

| Column              | Description                              |
| ------------------- | ---------------------------------------- |
| `Date_reported`     | Date on which COVID-19 data was reported |
| `Country_code`      | Country code                             |
| `Country`           | Country name                             |
| `WHO_region`        | WHO regional classification              |
| `New_cases`         | Newly reported COVID-19 cases            |
| `Cumulative_cases`  | Total cumulative reported cases          |
| `New_deaths`        | Newly reported COVID-19 deaths           |
| `Cumulative_deaths` | Total cumulative reported deaths         |

---

## 🛠️ Technologies Used

* **Python**
* **Jupyter Notebook**
* **Pandas**
* **NumPy**
* **Matplotlib**
* **Seaborn**
* **OpenPyXL**

---

## 📁 Project Structure

```text
COVID-19-Data-Analysis/
│
├── COVID-19.csv
├── COVID-19_Cleaned.xlsx
├── COVID-19_Data_Analysis.ipynb
├── README.md
└── images/
    ├── covid_cases_trend.png
    ├── covid_deaths_trend.png
    ├── top_countries_cases.png
    └── correlation_heatmap.png
```

---

## 🔍 Data Cleaning

The following preprocessing steps were performed:

1. Loaded the COVID-19 CSV dataset.
2. Checked dataset dimensions and data types.
3. Removed duplicate records.
4. Cleaned column names.
5. Converted `Date_reported` to datetime format.
6. Converted case and death columns to numeric data types.
7. Removed unnecessary whitespace from text fields.
8. Identified missing values.
9. Performed data-quality checks.
10. Prepared the dataset for exploratory analysis.

> Missing values were analyzed carefully rather than automatically deleting all affected records.

---

## 📈 Exploratory Data Analysis

### 1. Dataset Overview

The analysis begins by examining:

* Number of rows and columns
* Data types
* Unique values
* Missing values
* Duplicate records
* Statistical summary

### 2. Country Analysis

Countries are compared based on:

* Total COVID-19 cases
* Total COVID-19 deaths
* New cases
* New deaths
* Case Fatality Rate

### 3. WHO Region Analysis

COVID-19 cases and deaths are analyzed across WHO regions to identify regional differences.

### 4. Time-Series Analysis

The project examines:

* Daily cases
* Daily deaths
* Monthly cases
* Monthly deaths
* Yearly cases
* Yearly deaths

### 5. India Analysis

A dedicated analysis is performed for India, including:

* Daily cases
* Daily deaths
* Case trends
* Death trends
* Peak reporting days
* 7-day moving averages
* Case Fatality Rate

---

## 📐 Key Metric — Case Fatality Rate

The **Case Fatality Rate (CFR)** is calculated as:

```text
CFR = (Total Deaths / Total Cases) × 100
```

Python implementation:

```python
country_summary["Case_Fatality_Rate_%"] = (
    country_summary["Total_Deaths"] /
    country_summary["Total_Cases"]
) * 100
```

Countries with very small case counts should be interpreted carefully because their calculated CFR can be statistically unstable.

---

## 📊 Visualizations

The project includes visualizations such as:

* COVID-19 cases over time
* COVID-19 deaths over time
* Top countries by total cases
* Top countries by total deaths
* Cases by WHO region
* Deaths by WHO region
* Cases vs. deaths
* Correlation heatmap
* Distribution of new cases
* Distribution of new deaths
* India daily case trends
* India daily death trends
* 7-day moving average

Example:

```python
plt.figure(figsize=(16, 7))

plt.plot(
    india["Date_reported"],
    india["Cases_7_Day_MA"]
)

plt.title("India COVID-19 Cases - 7-Day Moving Average")
plt.xlabel("Date")
plt.ylabel("Cases")

plt.tight_layout()
plt.show()
```

---

## 📌 Key Analytical Questions

This project answers questions such as:

1. Which countries reported the highest number of COVID-19 cases?
2. Which countries reported the highest number of deaths?
3. Which WHO regions had the highest number of cases?
4. How did COVID-19 cases change over time?
5. How did COVID-19 deaths change over time?
6. Which periods experienced major COVID-19 peaks?
7. What is the relationship between cases and deaths?
8. What is the Case Fatality Rate for different countries?
9. How did COVID-19 trends develop in India?
10. What does the 7-day moving average reveal about COVID-19 trends?

---

## 💻 Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/COVID-19-Data-Analysis.git
```

Move into the project directory:

```bash
cd COVID-19-Data-Analysis
```

Install the required libraries:

```bash
pip install pandas numpy matplotlib seaborn openpyxl jupyter
```

Start Jupyter Notebook:

```bash
jupyter notebook
```

Open:

```text
COVID-19_Data_Analysis.ipynb
```

---

## 🚀 How to Run the Project

### Step 1 — Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/COVID-19-Data-Analysis.git
```

### Step 2 — Install dependencies

```bash
pip install -r requirements.txt
```

### Step 3 — Open Jupyter Notebook

```bash
jupyter notebook
```

### Step 4 — Run the notebook

Open:

```text
COVID-19_Data_Analysis.ipynb
```

Run the cells sequentially to reproduce the analysis.

---

## 📦 Requirements

Create a `requirements.txt` file containing:

```text
pandas
numpy
matplotlib
seaborn
openpyxl
jupyter
```

Install them using:

```bash
pip install -r requirements.txt
```

---

## 📤 Exported Clean Dataset

After data cleaning, the processed dataset can be exported to Excel:

```python
df.to_excel(
    "COVID-19_Cleaned.xlsx",
    index=False
)
```

This creates:

```text
COVID-19_Cleaned.xlsx
```

---

## 🧠 Data Analyst Skills Demonstrated

This project demonstrates practical knowledge of:

### Python

* Variables and data structures
* Functions
* Loops
* Conditional logic
* Pandas
* NumPy

### Data Cleaning

* Missing-value detection
* Duplicate removal
* Data-type conversion
* String cleaning
* Date-time processing

### Exploratory Data Analysis

* Descriptive statistics
* GroupBy analysis
* Aggregation
* Sorting
* Filtering
* Time-series analysis

### Data Visualization

* Bar charts
* Line charts
* Histograms
* Scatter plots
* Heatmaps

### Analytical Skills

* KPI calculation
* Trend analysis
* Comparative analysis
* Correlation analysis
* Country-level analysis
* Regional analysis
* Moving averages

---

## 📈 Sample Insights

The analysis can be used to identify:

* Countries with the highest reported COVID-19 case volumes.
* Countries with the highest reported COVID-19 death totals.
* Differences in COVID-19 impact across WHO regions.
* Major periods of increased case activity.
* The relationship between reported cases and deaths.
* COVID-19 trends in India.
* Changes in trends after applying a 7-day moving average.

> **Note:** Specific numerical findings should be taken directly from the executed notebook because the dataset may be updated or revised over time.

---

## ⚠️ Data Limitations

The analysis should be interpreted with the following limitations:

* Reported cases may differ from actual infections.
* Testing availability varied between countries and over time.
* Reporting practices differed between countries.
* Missing values are present in some fields.
* Case Fatality Rate should not be interpreted as the infection fatality rate.
* Historical COVID-19 data may be revised after initial reporting.

---

## 🔮 Future Improvements

Possible extensions include:

* Build an interactive **Power BI dashboard**
* Build a **Tableau dashboard**
* Perform SQL-based analysis
* Add country-level interactive filters
* Create automated reports
* Add statistical hypothesis testing
* Perform forecasting using time-series models
* Build an interactive Plotly dashboard
* Add automated data-quality checks
* Deploy the analysis as a Streamlit application

---

## 👨‍💻 Author

**Yaksh Patel**

Data Analyst | Python | SQL | Excel | Power BI

---

## ⭐ If You Find This Project Useful

If this project helps you learn data analysis, consider giving the repository a ⭐ on GitHub.

---

## 📄 License

This project is intended for **educational and portfolio purposes**. Please refer to the original dataset source for applicable data licensing and attribution requirements.
