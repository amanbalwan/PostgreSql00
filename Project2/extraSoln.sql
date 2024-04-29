SELECT 
passenger_name,
SUM(total_amount)
FROM tickets AS tk
INNER JOIN bookings AS bk
ON tk.book_ref=bk.book_ref
GROUP BY passenger_name
ORDER BY 2 DESC
LIMIT 1;

SELECT 
passenger_name,
fare_conditions,
COUNT(*)
FROM tickets AS tk
INNER JOIN bookings AS bk
ON tk.book_ref=bk.book_ref
INNER JOIN ticket_flights AS tf
ON tk.ticket_no=tf.ticket_no
AND passenger_name='ALEKSANDR IVANOV'
GROUP BY fare_conditions,passenger_name
ORDER BY 3 DESC
LIMIT 1;




