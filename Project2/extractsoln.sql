SELECT * FROM payment

SELECT 
EXTRACT(month from payment_date),
SUM(amount)
FROM payment
GROUP BY EXTRACT(month from payment_date)  
ORDER BY SUM(amount) DESC

SELECT 
EXTRACT(dow from payment_date),
SUM(amount)
FROM payment
GROUP BY EXTRACT(dow from payment_date)  
ORDER BY SUM(amount) DESC

SELECT
customer_id,
EXTRACT(week from payment_date) AS week,
SUM(amount) AS total
FROM payment
GROUP BY customer_id, EXTRACT(week from payment_date)
ORDER BY SUM(amount) DESC
