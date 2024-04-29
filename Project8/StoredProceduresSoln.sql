CREATE PROCEDURE emp_swap(emp1 INT ,emp2 INT)
LANGUAGE plpgsql
AS
$$
DECLARE
p1 TEXT;
p2 TEXT;
s1 DECIMAL(8,2);
s2 DECIMAL(8,2);


BEGIN

SELECT
position_title 
INTO p1
FROM employees WHERE emp_id=emp1;

SELECT
position_title 
INTO p2
FROM employees WHERE emp_id=emp2;

SELECT 
salary 
INTO s1
FROM employees WHERE emp_id=emp1;

SELECT 
salary 
INTO s2
FROM employees WHERE emp_id=emp2;

UPDATE employees
SET position_title=p2,
salary=s2
WHERE emp_id=emp1;


UPDATE employees
SET position_title=p1,
salary=s1
WHERE emp_id=emp2;

--rollback;

COMMIT;
END;
$$;

SELECT * FROM employees;

CALL emp_swap(1,2)