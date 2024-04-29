SELECT * FROM payment
WHERE (customer_id in (12,25,67,93,124,234))
AND (payment_date BETWEEN '2020-01-01' AND '2020-01-31 23:59')
AND (amount in (4.99,7.99,9.99))
