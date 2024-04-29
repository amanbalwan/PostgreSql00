SELECT 
MIN(replacement_cost),
MAX(replacement_cost),
ROUND(AVG(replacement_cost),2) AS average,
SUM(replacement_cost)
FROM film