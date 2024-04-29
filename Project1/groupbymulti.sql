SELECT 
DATE(payment_date),
staff_id,
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id,DATE(payment_date)
ORDER BY SUM(amount) DESC

SELECT 
DATE(payment_date),
staff_id,
SUM(amount),
COUNT(*)
FROM payment
WHERE amount != 0 
GROUP BY staff_id,DATE(payment_date)
ORDER BY SUM(amount) DESC