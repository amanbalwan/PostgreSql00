SELECT payment_id,customer_id,staff_id,amount,
(SELECT 
 SUM(amount)
 FROM payment AS p2
 WHERE p1.customer_id=p2.customer_id
 
),
(SELECT
 COUNT(*)
 FROM payment AS p3
 WHERE p1.customer_id=p3.customer_id
 
)
as total_amount FROM payment AS p1
ORDER BY customer_id ASC, amount DESC;


SELECT title,replacement_cost,rating,
(SELECT AVG(replacement_cost)
 FROM film as f3
 WHERE f1.rating=f3.rating
)
 FROM film as f1
WHERE replacement_cost=(SELECT
					   MAX(replacement_cost)
					   FROM film as f2
						WHERE f1.rating=f2.rating
					
					   );
					   

SELECT * FROM payment;





SELECT first_name,amount,payment_id FROM customer AS c1
INNER JOIN payment AS p1
ON c1.customer_id=p1.customer_id
WHERE amount=(SELECT 
			  MAX(amount)
			  FROM payment AS p2
			  WHERE 
			  p1.customer_id=p2.customer_id
);


SELECT first_name,MAX(amount) FROM customer AS c1
INNER JOIN payment AS p1
ON c1.customer_id=p1.customer_id
GROUP BY first_name


