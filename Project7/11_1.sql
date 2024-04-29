SELECT 
first_name,
position_title,
salary
FROM employees AS e1
WHERE salary =(SELECT MAX(salary)
			 FROM employees AS e2
			 WHERE e1.position_title=e2.position_title
			 )