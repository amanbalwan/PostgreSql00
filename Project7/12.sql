SELECT division,department,position_title,
SUM(salary),
COUNT(*),
ROUND(AVG(salary),2)
FROM employees AS e1
LEFT JOIN departments AS d1
ON e1.department_id=d1.department_id
GROUP BY CUBE(division,department,position_title)
ORDER BY division,department,position_title