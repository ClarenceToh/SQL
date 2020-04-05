SELECT DISTINCT genre 
FROM movies;

SELECT * 
FROM movies 
WHERE year > 2014;

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

SELECT *
FROM movies
WHERE year  BETWEEN '1970' AND '1979';

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;

SELECT *
FROM movies
WHERE year < 1985
  AND genre = 'horror';

SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';

SELECT name, year, imdb_rating 
FROM movies
ORDER BY imdb_rating DESC;

SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy'  THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;

-- challenge
SELECT year, number
FROM babies
WHERE name = 'Lillian' AND gender = 'F';

SELECT DISTINCT name
FROM babies
WHERE name LIKE 'S%'
LIMIT 20;

SELECT name, gender, number
FROM babies
WHERE year = 1880
ORDER BY number DESC
LIMIT 10;

SELECT *
 FROM nomnom
 WHERE cuisine = 'Japanese' AND price = '$$';

 SELECT * 
 FROM nomnom
 WHERE name LIKE '%noodle%';

 SELECT * 
 FROM nomnom
 WHERE health IS NULL;

 SELECT title, publisher
 FROM news
 ORDER BY title ASC;

 SELECT *
 FROM news
 WHERE title LIKE "%bitcoin%";

SELECT * 
 FROM news
 WHERE category = 'b'
 ORDER BY timestamp DESC
 LIMIT 20;

--World Populations SQL Practice

SELECT population 
from population_years
WHERE country = "Gabon"
ORDER BY population DESC
LIMIT 1;

SELECT DISTINCT country
from population_years
ORDER BY population ASC
LIMIT 10;

SELECT DISTINCT country
from population_years
WHERE population > 100 AND year = 2010;

SELECT DISTINCT country
from population_years
WHERE country LIKE "%Islands%";

SELECT * 
FROM population_years
WHERE country = 'Indonesia'
AND year LIKE '20%0'
