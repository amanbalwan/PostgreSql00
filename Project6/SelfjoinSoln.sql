SELECT 
emp.employee_id,
emp.name,
mng.name,
srmng.name
FROM employee as emp
LEFT JOIN employee as mng
On emp.manager_id=mng.employee_id
LEFT JOIN employee as srmng
On mng.manager_id=srmng.employee_id