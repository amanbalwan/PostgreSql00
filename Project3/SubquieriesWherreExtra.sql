SELECT * FROM customer;

SELECT * FROM payment;

SELECT * FROM address;


SELECT 
first_name,
last_name
FROM customer
WHERE 
customer_id IN( SELECT customer_id FROM payment WHERE DATE(payment_date)= '2020-01-25');

SELECT 
first_name,
email
FROM customer
WHERE 
customer_id IN ( SELECT customer_id FROM payment GROUP BY customer_id HAVING SUM(amount)>30 );

SELECT 
first_name,
last_name
FROM customer AS cs
INNER JOIN address AS ad
ON cs.address_id = ad.address_id
AND district = 'California'
WHERE customer_id IN ( SELECT customer_id FROM payment GROUP BY customer_id HAVING SUM(amount)>100)
ORDER BY first_name;

SELECT 
first_name,
last_name
FROM customer
WHERE customer_id IN ( SELECT customer_id FROM payment GROUP BY customer_id HAVING SUM(amount)>100)
AND customer_id IN (SELECT customer_id FROM customer AS cs
INNER JOIN address AS ad
ON cs.address_id = ad.address_id
WHERE district = 'California')