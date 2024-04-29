SELECT e1.*,
e2.first_name||' '||e2.last_name as manager,
CASE 
WHEN e1.end_date IS NOT NULL THEN 'False'
ELSE 'True'
END
AS is_active
FROM employees AS e1
LEFT JOIN employees AS e2
ON e1.manager_id=e2.emp_id