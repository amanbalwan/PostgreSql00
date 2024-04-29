SELECT * FROM directors;

ALTER TABLE director
ALTER COLUMN director_account_name TYPE VARCHAR(30),
ALTER COLUMN last_name DROP DEFAULT,
ALTER COLUMN last_name SET NOT null,
ADD COLUMN email VARCHAR(40),


ALTER TABLE director
RENAME director_account_name TO account_name

ALTER TABLE director
RENAME TO directors