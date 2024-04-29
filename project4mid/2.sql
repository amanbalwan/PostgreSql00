SELECT COUNT(*),
CASE
WHEN replacement_cost>=9.99 AND replacement_cost<=19.99 then 'low'
WHEN replacement_cost>=20.00 AND replacement_cost<=24.99 then 'medium'
WHEN replacement_cost>=25.00 AND replacement_cost<=29.99 then 'high'
END
FROM film
GROUP BY 2
ORDER BY count DESC


