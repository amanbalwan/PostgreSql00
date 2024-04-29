SELECT title,length,replacement_cost FROM film as f1
WHERE length>(SELECT 
			  AVG(length)
			  FROM film f2
			  WHERE f1.replacement_cost=f2.replacement_cost
			  
			  
)
ORDER BY length