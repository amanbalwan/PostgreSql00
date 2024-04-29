SELECT COUNT(*) FROM address AS a1
LEFT JOIN customer AS c1
ON a1.address_id=c1.address_id
WHERE customer_id is null