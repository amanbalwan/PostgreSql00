SELECT title,length,name FROM film AS f1
LEFT JOIN film_category AS fc1
ON f1.film_id=fc1.film_id
LEFT JOIN category AS c1
ON fc1.category_id=c1.category_id
WHERE name='Drama' OR name='Sports'
ORDER BY length DESC
LIMIT 1

