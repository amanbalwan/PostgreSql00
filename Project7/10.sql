SELECT *,
SUM(salary) OVER(ORDER BY start_date)
FROM
(SELECT 
emp_id,
salary,
start_date from v_employees_info
UNION 
SELECT
emp_id,
-salary,
end_date from v_employees_info
WHERE end_date IS NOT Null)
