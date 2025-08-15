#HR Employee Attrition Analysis (Power BI + SQL)
## Objective
Analyze employee attrition to identify key drivers (department, job role, tenure, overtime, salary) and recommend actions to improve retention.
## Dataset
- Source: IBM HR Analytics / Kaggle (or your source)
- Records: e.g., 1,470 employees, 35 fields
- File(s): see `/data` folder
## Tools & Tech
- SQL (MySQL Workbench) – cleaning & aggregations
- Power BI – interactive dashboards & storytelling
## Data Model / Prep
- Loaded CSV into MySQL → ran aggregation queries:
  - Overall attrition rate
  - Attrition by Department
  - Attrition by Job Role
  - Attrition by Overtime (Yes/No)
  - Attrition by YearsAtCompany (tenure)
- Exported query results as CSV → used as Power BI inputs (see `/data`)
## Dashboard Pages (Power BI)
Page 1 – Executive Summary
- KPIs: Total Employees, Employees Left, Attrition Rate %
- Charts: Attrition by Department, Attrition (Yes/No) distribution
Page 2 – Job Role & Overtime
- Attrition by Job Role (rate %)
- Overtime vs Attrition (stacked columns)
- Overtime split (donut)
Page 3 – Tenure & Salary
- Attrition by Years at Company (line)
- Optional: Income band / Age group analysis
## 🧪 SQL Queries
All SQL used is in `Employee Attrition SQL codes`.

Structure:
HR-Attrition-Analysis/
│
├── Projects/
│ ├── SQL+Power BI/
│ │ └── HR_Employee_Attrition.csv
│ ├── processed/
│ └── employee_attrition.csv
│
├── powerbi/
│ └── HR_Attrition_Dashboard.pbix
│
├── images/
│ └── dashboard_overview.png
│ └── dashboard_demographics.png
│ └── dashboard_performance.png
│
├── README.md
