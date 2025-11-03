/**
Task3 
Compare the average salary of female versus male employees in the entire company until year 2002, 
and add a filter allowing you to see that per each department.

**/

-- sol

SELECT 
    e.gender,
    d.dept_name,
    ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calendar_year
FROM
    t_salaries s
        JOIN
    t_employees e ON s.emp_no = e.emp_no
        JOIN
    t_dept_emp de ON de.emp_no = e.emp_no
        JOIN
    t_departments d ON d.dept_no = de.dept_no
GROUP BY d.dept_no , e.gender , calendar_year
HAVING calendar_year <= 2002
ORDER BY d.dept_no;

-- Also we visualize the above task 3 code using tableau



/** 
Task3.1
Apply the column names suggested. In order from left to right, they refer to the employees, departments, 
salaries, and dept_emp tables, respectively. Please note that the third column contains only average salary 
values rounded to the nearest cent. The last column should contain 'before' or 'on or after' depending on 
whether the employee's start date (stored in the dept_emp's from_date column) is before or on or after 
January 1, 1998.

Group by the department number dept_no, employee's gender, and jan_1_1998 columns. Retrieve only data about 
contracts signed in 1990 or later. Sort the obtained results by department number in ascending order.

**/

-- sol 

 SELECT 
        e.gender,
        d.dept_name,
        ROUND(AVG(s.salary), 2) AS avg_salary,
        CASE 
            WHEN de.from_date < '1998-01-01' THEN 'before'
            ELSE 'on or after'
        END AS jan_1_1998
    FROM
        salaries s
            JOIN
        employees e ON s.emp_no = e.emp_no
            JOIN
        dept_emp de ON de.emp_no = e.emp_no
            JOIN
        departments d ON d.dept_no = de.dept_no
    WHERE de.from_date >= '1990-01-01'
    GROUP BY d.dept_no, e.gender, jan_1_1998
    ORDER BY d.dept_no;


-- Also we visualize the above task 3.1 code using tableau