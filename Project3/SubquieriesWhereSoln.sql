SELECT 
film_id,
title
FROM film
WHERE length > (SELECT AVG(length) FROM film);

SELECT * FROM inventory;

SELECT 
film_id,
SUM(film_id)
FROM inventory
WHERE store_id=2
GROUP BY film_id
HAVING SUM(film_id)>3;


SELECT 
film_id, 
title
from film
WHERE film_id IN (SELECT 
film_id
FROM inventory
WHERE store_id=2
GROUP BY film_id
HAVING SUM(*)>3)
