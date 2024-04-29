SELECT 
first_name,
last_name,
phone,
district
from customer AS cs
INNER JOIN address AS ad
ON cs.address_id=ad.address_id
WHERE district = 'Texas'

SELECT
ad.address_id,
address
from customer AS cs
FULL OUTER JOIN address AS ad
ON cs.address_id=ad.address_id
WHERE cs.address_id IS null
ORDER BY ad.address_id 

