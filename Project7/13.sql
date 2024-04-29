SELECT 
emp_id, position_title, department , salary,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees
NATURAL LEFT JOIN departments