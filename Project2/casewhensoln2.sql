SELECT DISTINCT
title,

CASE 
WHEN rating in ('PG','PG-13') or length>210 THEN 'Great rating or very long (tier 1)'
WHEN description ILIKE '%drama%' and length>90   THEN 'Long drama (tier 2)'
WHEN description ILIKE '%drama%' and length<90   THEN 'Short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END 
FROM film
WHERE rating in ('PG','PG-13') or length>210 
OR description ILIKE '%drama%' and length>90   
OR description ILIKE '%drama%' and length<90   
OR rental_rate < 1 
ORDER BY title



SELECT DISTINCT
title,

CASE 
WHEN rating in ('PG','PG-13') or length>210 THEN 'Great rating or very long (tier 1)'
WHEN description ILIKE '%drama%' and length>90   THEN 'Long drama (tier 2)'
WHEN description ILIKE '%drama%' and length<90   THEN 'Short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END 
FROM film
WHERE CASE 
WHEN rating in ('PG','PG-13') or length>210 THEN 'Great rating or very long (tier 1)'
WHEN description ILIKE '%drama%' and length>90   THEN 'Long drama (tier 2)'
WHEN description ILIKE '%drama%' and length<90   THEN 'Short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END is not null


--SELECT * FROM film