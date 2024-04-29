/*SELECT count(*) 
FROM film
WHERE description ILIKE '%documentary%';
*/

SELECT 
count(*)
FROM customer
WHERE first_name LIKE '___' 
AND (last_name ILIKE '%X' OR   last_name ILIKE '%Y')