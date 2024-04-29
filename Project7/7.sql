SELECT d1.department,ROUND(AVG(e1.salary),2) FROM employees AS e1
LEFT JOIN departments AS d1
ON e1.department_id=d1.department_id
GROUP BY  d1.department

