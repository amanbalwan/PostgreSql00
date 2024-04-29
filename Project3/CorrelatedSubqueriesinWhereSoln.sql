SELECT * FROM payment AS p1
WHERE amount=(SELECT
	  MAX(amount)
	  FROM payment AS p2
	  WHERE p1.customer_id= p2.customer_id	  
)
ORDER BY customer_id;

SELECT title,film_id,replacement_cost,rating FROM film AS f1
WHERE replacement_cost=(SELECT
						MIN(replacement_cost)
						FROM film AS f2
						WHERE f1.rating=f2.rating
	 
	 );
	 
SELECT title,film_id,rating,length FROM film AS f1
WHERE length=(SELECT
						MAX(length)
						FROM film AS f2
						WHERE f1.rating=f2.rating
	 
	 );
	 

