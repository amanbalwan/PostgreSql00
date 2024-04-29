SELECT 
COUNT(*),
CASE
WHEN amount<20000.00 THEN 'low price tickets'
WHEN amount>=20000.00 AND amount<150000.00 THEN 'mid price tickets'
ELSE 'high price tickets'
END AS prices
FROM ticket_flights
GROUP BY prices
ORDER BY 1 DESC

SELECT * FROM bookings


SELECT 
COUNT(*),
CASE
WHEN EXTRACT(month from scheduled_departure) IN (12,1,2) THEN 'Winter'
WHEN EXTRACT(month from scheduled_departure) IN (3,4,5) THEN 'Spring'
WHEN EXTRACT(month from scheduled_departure) IN (6,7,8) THEN 'Summer'
WHEN EXTRACT(month from scheduled_departure) IN (9,10,11) THEN 'Fall'
END as season
FROM flights
GROUP BY season