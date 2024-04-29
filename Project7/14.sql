SELECT * FROM(SELECT 
emp_id, position_title, department , salary,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) as ranking
FROM employees
NATURAL LEFT JOIN departments)
WHERE ranking=1