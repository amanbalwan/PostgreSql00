CREATE TABLE songs(
	song_id SERIAL PRIMARY KEY,
	song_name VARCHAR(30) NOT NULL,
	genre VARCHAR(30) DEFAULT 'NOT DEFINED ',
	price NUMERIC(4,2) CHECK(price>=1.99),
	release_date DATE CONSTRAINT date_check CHECK(release_date BETWEEN '01-01-1995' AND CURRENT_DATE) 
)

SELECT * FROM songs

INSERT INTO songs
(song_id,song_name,price,release_date)
VALUES(4,'SQL SONG',0.99,'2022-01-07')


ALTER TABLE songs
DROP CONSTRAINT songs_price_check

ALTER TABLE songs
ADD CONSTRAINT songs_price_check CHECK(price>=0.99)