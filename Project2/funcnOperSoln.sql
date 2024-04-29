SELECT 
film_id,
ROUND((rental_rate/replacement_cost)*100,2) AS cost_percentage
FROM FILM
WHERE ROUND((rental_rate/replacement_cost)*100,2) < 4
ORDER BY 2 ASC

