SELECT name,payment_id,(SELECT SUM(amount)  FROM payment AS p1
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
WHERE c2.name=c1.name
) 

FROM payment AS p1
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

ORDER BY name,payment_id



