SELECT
LEFT(email,1)||'***'||SUBSTRING(email from POSITION('.' in email) for 2) || '***' || SUBSTRING(email from POSITION('@' in email))
FROM customer

SELECT
'***'||SUBSTRING(email from POSITION('.' in email)-1 for.  3) || '***' || SUBSTRING(email from POSITION('@' in email))
FROM customer