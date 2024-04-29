SELECT first_name,last_name,COUNT(*) FROM actor AS a1
LEFT JOIN film_actor AS fa1
ON a1.actor_id=fa1.actor_id
GROUP BY first_name,last_name
ORDER BY COUNT(*) DESC