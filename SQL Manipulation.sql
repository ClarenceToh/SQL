
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
); 

INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22);
INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 

INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 

INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 

ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

DELETE FROM celebs 
WHERE twitter_handle IS NULL;

CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);

-- project_1
CREATE table friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends(id, name, birthday)
VALUES(1, Jane Doe, May 30th, 1990);
INSERT INTO friends(id, name, birthday)
VALUES(2, John Doe, May 29th, 1990);
INSERT INTO friends(id, name, birthday)
VALUES(3, Jay Doe, May 28th, 1990);

UPDATE friends 
SET name = 'Jane Smith' 
WHERE id = 1; 

ALTER TABLE friends 
ADD COLUMN email TEXT; 

UPDATE friends 
SET email = 'jane@codecademy.com' 
WHERE id = 1; 

DELETE FROM friends 
WHERE id = 1;

SELECT * FROM friends;
