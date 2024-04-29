SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM inventory;
SELECT * FROM film;

SELECT p1.customer_id,
DATE(payment_date),
title,
SUM(amount)
FROM payment AS p1
LEFT JOIN rental AS r1
ON p1.rental_id=r1.rental_id
LEFT JOIN inventory AS i1
ON r1.inventory_id=i1.inventory_id
LEFT JOIN film AS f1
ON i1.film_id=f1.film_id

GROUP BY CUBE(p1.customer_id,
DATE(payment_date),
title)
ORDER BY 1,2,3 