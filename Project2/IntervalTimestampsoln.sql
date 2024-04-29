SELECT
customer_id,
return_date-rental_date
FROM rental
where customer_id=35

SELECT
customer_id,
AVG(return_date-rental_date) AS rental_duration
FROM rental
GROUP BY customer_id
ORDER BY 2 DESC