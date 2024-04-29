SELECT 
first_name,
last_name,
title,
COUNT(*)
FROM customer as ct
INNER JOIN rental as rt
ON ct.customer_id = rt.customer_id
INNER JOIN inventory as it
ON rt.inventory_id = it.inventory_id
INNER JOIN film as f
ON it.film_id = f.film_id
AND first_name='GEORGE'
AND last_name='LINTON'
GROUP BY first_name, last_name, title
ORDER BY 4 DESC
