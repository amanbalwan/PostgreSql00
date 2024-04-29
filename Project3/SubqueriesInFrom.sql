SELECT ROUND(AVG(am),2) as avgdaily
FROM 
(SELECT DATE(payment_date),SUM(amount) as am FROM payment GROUP BY DATE(payment_date))