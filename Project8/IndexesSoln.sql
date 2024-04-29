SELECT
(SELECT AVG (amount)
FROM payment p2
WHERE p2. rental_id=p1. rental_id)
FROM payment p1

CREATE INDEX index_payment_rentid
ON payment
(
	rental_id
);