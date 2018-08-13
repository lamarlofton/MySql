USE codeup_test_db;


SELECT name AS 'All albums in the table' albums;

SELECT * FROM albums
WHERE release_date = name;



SELECT name AS 'albums released before 1980'
FROM albums
WHERE release_date <1980


SELECT name AS 'Micheal Jackson'
FROM albums
WHERE artist;

UPDATE SELECT albums
SET * sales * 10
WHERE sales =
SELECT * FROM albums;

UPDATE SELECT albums
SET *
WHERE
SELECT * FROM albums;


UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Micheal Jackson'
SELECT * FROM albums;