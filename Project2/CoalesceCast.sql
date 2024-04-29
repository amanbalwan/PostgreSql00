SELECT 
rental_date,

COALESCE(CAST(return_date AS VARCHAR),'not returned')

FROM rental

ORDER BY 1 DESC