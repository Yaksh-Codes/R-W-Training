# 📊 Website Traffic & Conversion Analysis — Q1 2025

## 📌 Project Overview

This project analyzes **website traffic and conversion performance for Q1 2025** using Python. The analysis focuses on traffic trends, user engagement, referral sources, conversion performance, device/platform behavior, and bounce-rate patterns.

The project was completed using **Pandas, NumPy, Matplotlib, and Seaborn** in a Jupyter Notebook.

---

## 🎯 Project Objectives

- Prepare and clean website traffic data.
- Analyze daily and weekly traffic trends.
- Measure user engagement using session duration and page views.
- Identify the major referral sources generating traffic.
- Calculate overall conversion performance.
- Compare conversion rates across device types.
- Analyze bounce-rate patterns over time.
- Provide an executive-level summary of key website KPIs.

---

## 🗂️ Dataset

**Dataset:** `WebTraffic_Q1_2025.csv`

The dataset contains **600 website sessions** with the following fields:

| Column | Description |
|---|---|
| `VisitDate` | Date of the website visit |
| `SessionDuration` | Duration of the user session |
| `PageViews` | Number of pages viewed during the session |
| `ReferralSource` | Source that referred the visitor |
| `DeviceType` | Device used to access the website |
| `Platform` | Operating system/platform |
| `BounceRate` | Bounce rate associated with the session |
| `Conversions` | Whether the session resulted in a conversion (0/1) |

### Data Quality

Initial inspection identified missing values in:

- `SessionDuration`: 12 missing values
- `PageViews`: 9 missing values

The notebook handled these missing numeric values using the **median**, while malformed dates were converted using `errors="coerce"` and invalid dates were removed.

---

## 🛠️ Technologies Used

- **Python**
- **Pandas** — Data manipulation and analysis
- **NumPy** — Numerical operations
- **Matplotlib** — Data visualization
- **Seaborn** — Visualization support
- **Jupyter Notebook** — Development environment

---

## 🔄 Project Workflow

```text
Dataset
   ↓
Data Loading
   ↓
Data Inspection
   ↓
Data Cleaning & Preparation
   ↓
Traffic Trend Analysis
   ↓
User Engagement Analysis
   ↓
Conversion Analysis
   ↓
Device & Platform Analysis
   ↓
Bounce Rate Analysis
   ↓
Executive KPI Summary
```

---

## 🧹 1. Data Preparation

The following preprocessing steps were performed:

- Converted `VisitDate` to datetime format.
- Created:
  - `Month`
  - `DayOfWeek`
  - `WeekNumber`
- Converted `SessionDuration` and `PageViews` to numeric values.
- Filled missing `SessionDuration` values with the median.
- Filled missing `PageViews` values with the median.
- Removed rows with invalid/missing `VisitDate` values.
- Verified that the cleaned dataset contained no remaining missing values.

---

## 📈 2. Traffic Trend Analysis

The project analyzes:

### Daily Sessions
A time-series visualization was created to understand how website sessions changed throughout Q1 2025.

### Weekly Traffic Comparison
Weekly session volumes were compared across the months of Q1 to identify changes in traffic patterns.

---

## 👥 3. User Engagement Analysis

Two important engagement KPIs were calculated:

| KPI | Result |
|---|---:|
| Average Session Duration | **308.88** |
| Average Page Views | **4.95** |

The analysis also identifies the **top 5 referral sources** responsible for bringing website traffic.

---

## 🎯 4. Conversion Analysis

The conversion analysis calculates total sessions, total conversions, and the overall conversion rate.

| KPI | Result |
|---|---:|
| Total Sessions | **600** |
| Total Conversions | **86** |
| Overall Conversion Rate | **14.33%** |

### Conversion Distribution

- Non-converting sessions: **514**
- Converting sessions: **86**

The notebook also visualizes the distribution of conversions by referral source.

---

## 📱 5. Device & Platform Insights

Conversion performance was compared across **Desktop, Mobile, and Tablet** users.

| Device | Sessions | Conversions | Conversion Rate |
|---|---:|---:|---:|
| Desktop | 195 | 30 | **15.38%** |
| Mobile | 206 | 25 | **12.14%** |
| Tablet | 199 | 31 | **15.58%** |

### Key Observation

Based on the calculated conversion rates:

- **Tablet** had the highest conversion rate at **15.58%**.
- **Desktop** followed at **15.38%**.
- **Mobile** had the lowest conversion rate at **12.14%**.

The project also compares average session duration across device types.

---

## 🚨 6. Bounce Rate Pattern

The project calculates the **average daily bounce rate** and highlights days where the average bounce rate exceeded **70%**.

A threshold line at 70% was added to make high-bounce periods easier to identify.

The analysis also visualizes website sessions by day of the week.

---

## 📊 Visualizations

The notebook includes visualizations for:

- Daily website sessions
- Weekly traffic comparison
- Top 5 referral sources
- Conversion distribution by referral source
- Average session duration by device
- Conversion rate by device
- Average daily bounce rate
- Sessions by day of week

---

## 💼 Business Insights

The analysis provides several actionable observations:

1. The website recorded **600 sessions** during the analyzed period.
2. **86 sessions converted**, producing an overall conversion rate of **14.33%**.
3. Average session duration was approximately **308.88**, while users viewed approximately **4.95 pages per session**.
4. Tablet users achieved the highest device-level conversion rate (**15.58%**).
5. Mobile users had the lowest device-level conversion rate (**12.14%**), indicating an opportunity to investigate the mobile user experience.
6. Daily bounce-rate analysis can help identify periods where website engagement may need improvement.
7. Referral-source analysis can help identify the traffic channels that deserve further marketing attention.

---

## 📁 Recommended Repository Structure

```text
website-traffic-analysis/
│
├── README.md
├── Live Project 1.ipynb
├── WebTraffic_Q1_2025.csv
│
└── images/
    ├── daily_sessions.png
    ├── weekly_traffic.png
    ├── referral_sources.png
    ├── conversion_sources.png
    ├── device_duration.png
    ├── device_conversion.png
    └── bounce_rate.png
```

---

## ▶️ How to Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/your-username/website-traffic-analysis.git
cd website-traffic-analysis
```

### 2. Install dependencies

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### 3. Start Jupyter Notebook

```bash
jupyter notebook
```

### 4. Open the notebook

Open:

```text
Live Project 1.ipynb
```

Make sure `WebTraffic_Q1_2025.csv` is available in the same project directory.

---

## 📌 Key Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis (EDA)
- Time-Series Traffic Analysis
- KPI Analysis
- Conversion Rate Analysis
- Customer/User Engagement Analysis
- Categorical Data Analysis
- Data Visualization
- Business Insight Generation
- Python for Data Analytics

---

## 🚀 Future Improvements

Possible extensions to this project include:

- Build an interactive **Power BI dashboard**.
- Add statistical correlation analysis.
- Analyze referral-source conversion rates in more depth.
- Create a predictive conversion model.
- Perform platform-level conversion analysis.
- Add automated KPI reporting.
- Deploy the analysis as an interactive Streamlit application.

---

## 👨‍💻 Author

**Prasenkumar Patel**

Data Analyst | Python | SQL | Power BI | Data Science

---

## ⭐ Project Summary

**Website Traffic & Conversion Analysis** demonstrates an end-to-end Python data analytics workflow—from data preparation and exploratory analysis to visualization, KPI calculation, and business insights.

If you find this project useful, consider giving the repository a ⭐ on GitHub.
