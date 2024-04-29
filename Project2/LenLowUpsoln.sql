SELECT 
LOWER(first_name) AS firstname,
LOWER(last_name) AS lastname,
LOWER(email) AS email
FROM customer
WHERE LENGTH(first_name)>10 OR LENGTH(last_name)>10