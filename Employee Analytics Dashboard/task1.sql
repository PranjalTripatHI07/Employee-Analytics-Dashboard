/** 
Task1 
Create a visualization that provides a breakdown between the male and female employees working in the 
company each year, starting from 1990. 
**/

-- Sol 

SELECT 

    YEAR(d.from_date) AS calendar_year,
    e.gender,    
    COUNT(e.emp_no) AS num_of_employees

FROM     
     t_employees e         
          JOIN    
     t_dept_emp d ON d.emp_no = e.emp_no

GROUP BY calendar_year , e.gender 

HAVING calendar_year >= 1990;


-- Also we visualize the above task 1 code using tableau


/**
Task1.1

How many female employees have signed their contracts before January 1, 1998 according to the data in the 
dept_emp table? Also, determine the relevant number for male employees. 

Assign 'before' to all employees who have started before the suggested date; otherwise
**/


-- sol 
SELECT 

    CASE

        WHEN d.from_date < '1998-01-01' THEN 'before' ELSE 'on or after'

    END as jan_1_1998,

    gender,

    COUNT(*) AS num_of_employees

FROM employees e

JOIN dept_emp d ON e.emp_no = d.emp_no

GROUP BY jan_1_1998, gender;


-- Also we visualize the above task 1.1 code using tableau