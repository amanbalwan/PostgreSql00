SELECT 
COUNT(*) FROM boarding_passes AS b
FULL OUTER JOIN tickets AS t
ON b.ticket_no=t.ticket_no
WHERE b.ticket_no is null