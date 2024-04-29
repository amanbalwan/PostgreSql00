 CREATE OR REPLACE FUNCTION name_search(c1 TEXT, c2 TEXT)
 RETURNS DECIMAL(6,2)
 LANGUAGE plpgsql
 AS 
 $$
 DECLARE
 c3 DECIMAL(6,2);
 BEGIN
 SELECT 
 SUM(amount)
 INTO c3
 FROM payment as p1
 NATURAL LEFT JOIN customer 
 WHERE c1=first_name AND c2=last_name;
 RETURN c3;
 END; 
 $$
 
 SELECT first_name,last_name,  name_search(first_name,last_name) FROM customer
 
 
 
