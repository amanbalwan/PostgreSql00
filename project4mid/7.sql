SELECT city,SUM(amount) FROM payment AS p1
LEFT JOIN customer AS c1
ON p1.customer_id=c1.customer_id
LEFT JOIN address AS a1
ON c1.address_id=a1.address_id
LEFT JOIN city AS ct1
ON a1.city_id=ct1.city_id
GROUP BY city
ORDER BY SUM(amount) DESC
