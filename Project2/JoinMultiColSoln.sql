SELECT * FROM ticket_flights;

SELECT * FROM boarding_passes;

SELECT 
seat_no,
ROUND(AVG(amount),2)
FROM ticket_flights AS tf
INNER JOIN boarding_passes AS bp
ON tf.ticket_no = bp.ticket_no
AND tf.flight_id = bp.flight_id
GROUP BY seat_no
ORDER BY 2 DESC