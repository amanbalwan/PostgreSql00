SELECT
f1.film_id,
title,
length,
name AS category,
ROUND(AVG(length) OVER(PARTITION BY name),2)
FROM film AS f1
LEFT JOIN film_category as fc1
ON f1.film_id = fc1.film_id
LEFT JOIN category as c1
On fc1.category_id=c1.category_id
ORDER BY film_id;

SELECT *,
COUNT(*) OVER(PARTITION BY customer_id,amount)
FROM payment
ORDER BY payment_id;