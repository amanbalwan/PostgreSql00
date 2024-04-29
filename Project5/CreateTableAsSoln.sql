SELECT * FROM customer;

SELECT * FROM payment;

CREATE TABLE customer_spendings
AS
SELECT first_name || ' ' || last_name AS name, SUM(amount) as total_amount FROM customer AS c1
LEFT JOIN payment AS p1
ON  c1.customer_id=p1.customer_id
GROUP BY first_name,last_name

SELECT * FROM customer_spendings;