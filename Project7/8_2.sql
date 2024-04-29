SELECT COUNT(*) FROM (SELECT emp_id,

first_name,

last_name,

position_title,

salary,

ROUND(AVG(salary) OVER(PARTITION BY position_title ),2) AS avg_position_salary


FROM employees
)
WHERE salary<avg_position_salary