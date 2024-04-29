SELECT tk.ticket_no,passenger_name,scheduled_departure from tickets AS tk
LEFT JOIN ticket_flights AS tf
ON tk.ticket_no=tf.ticket_no
LEFT JOIN flights AS f
ON tf.flight_id=f.flight_id

