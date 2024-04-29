SELECT * FROM employees;

UPDATE employees
SET
salary=salary+(salary*6/100)
WHERE position_title LIKE '%SQL Analyst'