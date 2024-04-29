SELECT position_title,ROUND(AVG(salary),2) FROM employees
GROUP BY position_title
