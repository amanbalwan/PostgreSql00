/*SELECT ad.aircraft_code FROM aircrafts_data as ad
LEFT JOIN flights as f
ON ad.aircraft_code = f.aircraft_code 
WHERE f.flight_id is null
*/

/*SELECT 
s.seat_no,
COUNT(s.seat_no)
FROM seats as s
LEFT JOIN boarding_passes as bp
ON s.seat_no=bp.seat_no
GROUP BY s.seat_no
ORDER BY 2 DESC
*/

SELECT 
RIGHT(s.seat_no,1),
COUNT(*)
FROM seats as s
LEFT JOIN boarding_passes as bp
ON s.seat_no=bp.seat_no
GROUP BY RIGHT(s.seat_no,1)
ORDER BY 2 DESC


