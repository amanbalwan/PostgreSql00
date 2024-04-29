SELECT 
customer_id,
DATE(payment_date),
ROUND(AVG(amount),2) AS avg,
COUNT(*)
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28','2020-04-29', '2020-04-30')
GROUP BY customer_id,DATE(payment_date)
HAVING COUNT(*)>1
ORDER BY AVG(amount) DESC



