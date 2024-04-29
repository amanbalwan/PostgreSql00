SELECT 
emp_id,
salary,
start_date,
SUM(salary) OVER (ORDER BY start_date)
FROM employees