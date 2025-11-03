# Employee Analytics Dashboard 📊

A comprehensive MySQL and Tableau analytics project analyzing employee demographics, salary distributions, and management structures across departments and time periods.

## 🚀 Tech Stack

- **Database**: MySQL
- **Visualization**: Tableau
- **Query Language**: SQL
- **Data Analysis**: Advanced SQL queries with joins, subqueries, and stored procedures

## 📋 Project Overview

This project performs in-depth analysis of employee data to uncover insights about:
- Gender distribution across departments and years
- Salary comparisons between male and female employees
- Management structure analysis
- Employee contract patterns and tenure

## 🗂️ Project Structure

```
project_name/
├── task1.sql    # Employee Gender Distribution Analysis
├── task2.sql    # Management Analysis by Gender
├── task3.sql    # Salary Comparison Analysis
├── task4.sql    # Dynamic Salary Range Analysis (Stored Procedure)
└── README.md
```

## 📊 Analysis Tasks

### Task 1: Employee Gender Distribution
- **Objective**: Analyze male vs female employee breakdown by year (1990+)
- **Features**: 
  - Yearly gender distribution trends
  - Contract signing patterns before/after 1998
- **Visualization**: Time series charts in Tableau

### Task 2: Management Structure Analysis
- **Objective**: Compare male vs female managers across departments
- **Features**:
  - Department-wise manager distribution
  - Active vs inactive manager tracking
  - Cross-join analysis with subqueries
- **Visualization**: Department comparison charts

### Task 3: Salary Analysis
- **Objective**: Gender-based salary comparison until 2002
- **Features**:
  - Average salary by gender and department
  - Temporal salary trends
  - Contract date categorization
- **Visualization**: Multi-dimensional salary dashboards

### Task 4: Dynamic Salary Range Analysis
- **Objective**: Flexible salary analysis with user-defined ranges
- **Features**:
  - Stored procedure with input parameters
  - Real-time salary filtering
  - Department and gender breakdown
- **Visualization**: Interactive double bar charts

## 🔧 Key Features

### Advanced SQL Techniques
- **Complex Joins**: Multi-table joins across employee, department, and salary tables
- **Stored Procedures**: Dynamic parameter-based queries
- **Subqueries**: Nested queries for complex data relationships
- **Conditional Logic**: CASE statements for data categorization
- **Aggregate Functions**: Statistical analysis with AVG, COUNT, ROUND

### Database Schema
The project works with the following key tables:
- `t_employees` / `employees` - Employee master data
- `t_departments` / `departments` - Department information
- `t_salaries` / `salaries` - Salary records
- `t_dept_emp` / `dept_emp` - Employee-department relationships
- `t_dept_manager` / `dept_manager` - Management hierarchy

## 🚀 Getting Started

### Prerequisites
- MySQL Server 8.0+
- Tableau Desktop/Public
- Employee database schema

### Installation
1. Clone the repository
2. Import the employee database schema
3. Execute SQL files in sequence:
   ```bash
   mysql -u username -p database_name < task1.sql
   mysql -u username -p database_name < task2.sql
   mysql -u username -p database_name < task3.sql
   mysql -u username -p database_name < task4.sql
   ```

### Usage
Execute the stored procedure with custom salary ranges:
```sql
CALL filter_salary(50000, 90000);
```

## 📈 Tableau Visualizations

Each task includes corresponding Tableau visualizations:
- **Interactive Dashboards**: Gender and salary analytics
- **Time Series Charts**: Employee trends over time
- **Comparative Analysis**: Department-wise breakdowns
- **Dynamic Filtering**: Real-time data exploration

## 🎯 Key Insights

- Comprehensive gender analysis across all organizational levels
- Salary equity assessment between male and female employees
- Management representation tracking
- Historical trend analysis for strategic decision making

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📞 Contact

For questions or collaboration opportunities, please reach out!

---

*Built with ❤️ using MySQL and Tableau*
