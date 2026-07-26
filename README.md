# Executive Workforce Insights | IBM HR Analytics

An end-to-end HR Analytics project built using **Python, MySQL, SQL, Power BI, and DAX** to analyze employee attrition, workforce demographics, salary distribution, and organizational trends. This project transforms raw HR data into actionable business insights through data cleaning, SQL analytics, and an interactive executive dashboard.

---

## Dashboard Preview

![HR Analytics Dashboard](./Images/HR%20Analytics%20Dashboard.png)

---

## Dashboard Files

- 📊 Power BI Report: `Power BI/HR Analytics Dashboard.pbix`
- 📄 Dashboard PDF: `Power BI/HR Analytics Dashboard.pdf`

---

# Project Overview

Employee attrition is one of the biggest challenges faced by organizations. Understanding why employees leave helps HR teams improve retention, workforce planning, employee satisfaction, and recruitment strategies.

This project performs an end-to-end HR analytics workflow, starting from raw data cleaning to business intelligence reporting.

---

# Business Objectives

- Analyze overall employee attrition.
- Identify departments with the highest attrition.
- Discover job roles with maximum employee turnover.
- Analyze salary distribution across the organization.
- Study the relationship between overtime and attrition.
- Evaluate employee demographics.
- Build an interactive executive dashboard for HR decision-making.

---

# Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Data Cleaning & ETL |
| Pandas | Data Processing |
| MySQL | Data Storage |
| SQL | Business Analysis |
| Power BI | Dashboard Development |
| DAX | KPI Calculations |
| Git & GitHub | Version Control |

---

# Project Workflow

```
Raw Dataset
      ↓
Python Data Cleaning
      ↓
Clean CSV
      ↓
MySQL Database
      ↓
SQL Analysis
      ↓
Power BI Dashboard
      ↓
Business Insights
```

---

# Folder Structure

```
HR-Analytics-Employee-Attrition/

├── Dataset/
├── Documentation/
├── Excel/
├── Images/
├── Power BI/
├── Python/
├── SQL/
└── README.md
```

---

# Dataset

- Source: IBM HR Analytics Employee Attrition Dataset
- Total Employees: **1,470**
- Features: **35**
- Target Variable: **Attrition**

---

# Data Cleaning (Python)

The dataset was cleaned using **Pandas**.

Cleaning steps included:

- Removed duplicate records
- Verified missing values
- Standardized column names
- Exported cleaned dataset
- Prepared dataset for MySQL import

---

# SQL Analysis

The project contains three levels of SQL analysis.

### Basic Analysis

- Total Employees
- Active Employees
- Attrition Rate
- Average Salary
- Average Age
- Average Tenure
- Gender Distribution

### Business Analysis

- Department-wise Attrition
- Job Role Attrition
- Salary Band Analysis
- Overtime Analysis
- Business Travel Analysis
- Work-Life Balance
- Job Satisfaction
- Education Field Analysis

### Advanced SQL

Implemented advanced SQL concepts including:

- Window Functions
- CTEs
- Ranking
- Dense Rank
- NTILE
- Running Totals
- Percentage Contribution
- Salary Difference Analysis

---

# Dashboard KPIs

- Total Employees
- Employees Left
- Active Employees
- Attrition Rate
- Average Monthly Salary
- Average Employee Age

---

# Dashboard Features

Interactive filters for:

- Department
- Job Role
- Gender
- Marital Status
- Education Field

Visualizations include:

- Department-wise Attrition
- Job Role Attrition
- Age Group Analysis
- Salary Band Distribution
- Overtime Analysis
- Business Travel Analysis

---

# Key Business Insights

- Overall employee attrition rate is **16.12%**.
- Sales department records the highest attrition percentage.
- Sales Executives and Research Scientists contribute significantly to employee turnover.
- Employees working overtime are more likely to leave.
- Most attrition occurs among employees aged **25–34**.
- Lower salary bands show higher attrition compared to higher income groups.

---

# Skills Demonstrated

- Data Cleaning
- ETL Pipeline
- SQL Query Writing
- Advanced SQL
- Data Modeling
- Business Intelligence
- KPI Design
- Dashboard Development
- Data Visualization
- Business Storytelling

---

# Future Enhancements

- Predict employee attrition using Machine Learning.
- Connect the dashboard to a live SQL database.
- Add forecasting and trend analysis.
- Deploy the dashboard online using Power BI Service.

---

# Author

**Alfiya Simran**

Aspiring Data Analyst passionate about transforming raw data into meaningful business insights using Python, SQL, and Power BI.

---

## If you found this project useful

⭐ Star this repository if you found it helpful.
