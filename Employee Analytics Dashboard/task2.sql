/**
Task2 

Compare the number of male managers to the number of female managers from different departments for each year, 
starting from 1990.

**/

-- sol

SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calendar_year,
    CASE
        WHEN YEAR(dm.to_date) >= e.calendar_year AND YEAR(dm.from_date) <= e.calendar_year THEN 1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        t_employees
    GROUP BY calendar_year) e
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
        JOIN 
    t_employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no, calendar_year;



-- Also we visualize the above task2 code using tableau


/**
Task2.1
Use a subquery that cross-joins the employees table (with an alias e) with the dept_manager, departments, and 
employees tables (with aliases dm, d, and ee, respectively). This subquery should be part of an outer query 
that retrieves data from the following five subquery columns: 
department name (dept_name)
gender (gender)
employee number (emp_no)
start date (from_date)
and end date (to_date).

Additionally, the outer query should include a sixth column named currently_active which displays the value of 
1 if the employee is currently working in the company, and 0 if they are not. For this task, assume 
'currently active' means an employee whose contract end date is in 2024 or later.
Sort the results by employee number in descending order.

**/

-- sol 

SELECT 
    a.dept_name,
    a.gender,
    a.emp_no,
    a.from_date,
    a.to_date,
    CASE
        WHEN a.to_date >= '2024-01-01' THEN 1
        ELSE 0
    END AS currently_active
FROM (
    -- original inner SELECT goes here
    SELECT 
    d.dept_name, e.gender, e.emp_no, dm.from_date, dm.to_date
FROM
    employees e
CROSS JOIN
    dept_manager dm
JOIN
    departments d ON dm.dept_no = d.dept_no
JOIN 
    employees ee ON dm.emp_no = ee.emp_no
) a
ORDER BY a.emp_no DESC;


-- Also we visualize the above task 2.1 code using tableau

