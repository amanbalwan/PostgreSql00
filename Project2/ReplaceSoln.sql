SELECT 
flight_no,
CAST(REPLACE(flight_no,'PG','') AS INT)
FROM flights