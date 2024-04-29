SELECT 
fare_conditions,
COUNT(*)
FROM boarding_passes
INNER JOIN seats
ON boarding_passes.seat_no=seats.seat_no
GROUP BY fare_conditions
