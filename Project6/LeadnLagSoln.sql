SELECT 
SUM(amount),
DATE(payment_date) as day,
LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS previous_day,
SUM(amount)-LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)) AS difference,
ROUND((SUM(amount)-LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)))*100/LAG(SUM(amount)) OVER(ORDER BY DATE(payment_date)),2) AS growth
FROM payment
GROUP BY DATE(payment_date)
