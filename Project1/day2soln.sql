SELECT 
COUNT(*) AS no_of_movies
FROM film
WHERE description LIKE '%Saga%' 
AND (title LIKE '%R' OR title LIKE 'A%')



SELECT 
*
FROM customer
WHERE first_name ILIKE '%er%'
AND first_name ILIKE '_A%'
ORDER BY last_name DESC


SELECT 
COUNT(*) 
FROM payment
WHERE (amount = 0 
OR amount BETWEEN 3.99 AND 7.99)
AND payment_date BETWEEN '2020-05-01' AND '2020-05-02'