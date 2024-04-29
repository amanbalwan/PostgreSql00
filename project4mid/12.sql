SELECT ROUND(AVG(SUM),2),district FROM (SELECT SUM(amount),district FROM customer as c1
INNER JOIN payment as p1
ON c1.customer_id=p1.customer_id
INNER JOIN address as a1
ON c1.address_id=a1.address_id
GROUP BY c1.address_id,district)
GROUP BY district
ORDER BY 1 DESC





