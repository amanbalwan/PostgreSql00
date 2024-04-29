SELECT staff_id,ROUND(AVG(suma),2)
FROM (SELECT
	  staff_id,
	  customer_id,
	  SUM(amount) as suma
	  
 from payment
 GROUP BY staff_id,customer_id
	  
	  
) 
GROUP BY staff_id
