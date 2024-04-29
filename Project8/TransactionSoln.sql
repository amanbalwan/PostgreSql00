SELECT * FROM employees 

BEGIN;
UPDATE employees
SET  salary=  14614.00,
position_title='Head of BI'
WHERE emp_id=1;
UPDATE employees
SET  salary=  21268.94,
position_title='CTO'
WHERE emp_id=2;
COMMIT;
      