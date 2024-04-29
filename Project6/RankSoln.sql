SELECT 
name,
country,
COUNT(*),
RANK() OVER(PARTITION BY country ORDER BY COUNT(*)) 
FROM customer_list AS cl1
LEFT JOIN payment AS p1
ON cl1.id=p1.customer_id
GROUP BY name,country;

SELECT 
* FROM(
SELECT 
name,
country,
COUNT(*),
RANK() OVER(PARTITION BY country ORDER BY COUNT(*)) 
FROM customer_list AS cl1
LEFT JOIN payment AS p1
ON cl1.id=p1.customer_id
GROUP BY name,country
)
WHERE RANK=1





