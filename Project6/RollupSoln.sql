SELECT 
EXTRACT(QUARTER FROM book_date) AS quarter,
EXTRACT(MONTH FROM book_date) AS month,
TO_CHAR(book_date,'w') AS week,
DATE(book_date) AS day,
SUM(total_amount) AS booking_amount
FROM bookings
GROUP BY ROLLUP(1,2,3,4)
ORDER BY 1,2,3,4