SELECT 
SUM(amount) AS total_amount,
TO_CHAR(payment_date,'Dy, DD/MM/YYYY') as Day
FROM payment
GROUP BY DAY
ORDER BY total_amount


SELECT 
SUM(amount) AS total_amount,
TO_CHAR(payment_date,'Mon, YYYY') as mon
FROM payment
GROUP BY mon
ORDER BY total_amount

SELECT 
SUM(amount) AS total_amount,
TO_CHAR(payment_date,'Dy,HH:MI') as Day
FROM payment
GROUP BY DAY
ORDER BY total_amount DESC