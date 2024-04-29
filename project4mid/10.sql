SELECT ROUND(AVG(suma),2) FROM(SELECT SUM(amount) as suma FROM payment 
						WHERE EXTRACT(DOW FROM payment_date) = 0
						GROUP BY DATE(payment_date))
						
