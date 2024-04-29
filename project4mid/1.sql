SELECT DISTINCT(replacement_cost) FROM film
ORDER BY replacement_cost
LIMIT 1;

SELECT MIN(DISTINCT(replacement_cost)) FROM film