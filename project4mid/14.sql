SELECT title,name,SUM(amount) FROM payment AS p1
INNER JOIN rental AS r1
ON p1.rental_id=r1.rental_id
INNER JOIN inventory AS i1
ON r1.inventory_id=i1.inventory_id
INNER JOIN film AS f1
ON i1.film_id=f1.film_id
INNER JOIN film_category AS fc1
ON f1.film_id=fc1.film_id
INNER JOIN category AS c1
ON fc1.category_id=c1.category_id
GROUP BY title,name
HAVING SUM(amount)=(SELECT MAX(total)
				   	FROM (SELECT name,SUM(amount) as total FROM payment AS p1
					INNER JOIN rental AS r1
					ON p1.rental_id=r1.rental_id
					INNER JOIN inventory AS i1
					ON r1.inventory_id=i1.inventory_id
					INNER JOIN film AS f1
					ON i1.film_id=f1.film_id
					INNER JOIN film_category AS fc1
					ON f1.film_id=fc1.film_id
					INNER JOIN category AS c2
					ON fc1.category_id=c2.category_id
					GROUP BY title,name
					
				   ) sub
					WHERE c1.name=sub.name
				)
				
ORDER BY name




