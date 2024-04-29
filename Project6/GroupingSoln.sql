SELECT * FROM customer;
SELECT * FROM payment;

SELECT first_name,last_name ,staff_id,SUM(amount),

ROUND((SUM(amount)/FIRST_VALUE(SUM(amount)) OVER(PARTITION BY first_name,last_name ORDER BY SUM(amount) DESC))*100,2) as percentage


FROM customer AS c1
LEFT JOIN payment AS p1
ON c1.customer_id=p1.customer_id
GROUP BY
GROUPING SETS(
(first_name,last_name,staff_id),(first_name,last_name)
);

SELECT first_name,last_name ,staff_id,SUM(amount)
FROM customer AS c1
LEFT JOIN payment AS p1
ON c1.customer_id=p1.customer_id
GROUP BY
GROUPING SETS(
(first_name,last_name,staff_id),(first_name,last_name)
)
ORDER BY first_name,last_name