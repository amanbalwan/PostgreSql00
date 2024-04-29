SELECT first_name,last_name,email,country FROM customer AS cus
LEFT JOIN address AS ad
ON cus.address_id = ad.address_id
LEFT JOIN city AS ct
ON ad.city_id = ct.city_id
LEFT JOIN country as cn
ON ct.country_id = cn.country_id
WHERE country='Brazil'
