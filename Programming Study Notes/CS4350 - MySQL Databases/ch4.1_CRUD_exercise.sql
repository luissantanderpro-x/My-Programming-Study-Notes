# <MySQL> | Ch3.8 - DELETE code challenge 
# --------------------------------------

CREATE DATABASE shirts_db; 

USE shirts_db; 

CREATE TABLE shirts (

	shirt_id INT NOT NULL AUTO_INCREMENT,
	article VARCHAR(25) NOT NULL DEFAULT 'general shirt', 
	color VARCHAR(25) NOT NULL DEFAULT 'white', 
	shirt_size VARCHAR(10) NOT NULL, 
	last_worn INT NOT NULL DEFAULT 0,
	PRIMARY KEY(shirt_id) 
);


INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10);

INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'green', 'S', 200),
       ('polo-shirt', 'black', 'M', 10),
       ('tank top', 'blue', 'S', 50),
       ('t-shirt', 'pink', 'S', 0),
       ('polo-shirt', 'red', 'M', 5),
       ('tank top', 'white', 'S', 200),
       ('tank top', 'blue', 'M', 15); 


-- +----------+------------+-------+------------+-----------+
-- | shirt_id | article    | color | shirt_size | last_worn |
-- +----------+------------+-------+------------+-----------+
-- |        1 | t-shirt    | white | S          |        10 |
-- |        2 | t-shirt    | green | S          |       200 |
-- |        3 | polo-shirt | black | M          |        10 |
-- |        4 | tank top   | blue  | S          |        50 |
-- |        5 | t-shirt    | pink  | S          |         0 |
-- |        6 | polo-shirt | red   | M          |         5 |
-- |        7 | tank top   | white | S          |       200 |
-- |        8 | tank top   | blue  | M          |        15 |
-- +----------+------------+-------+------------+-----------+

INSERT INTO shirts(article, color, shirt_size, last_worn)
VALUES('polo-shirt', 'purple', 'M', 50); 


SELECT article, color FROM cats; 

-- +------------+--------+
-- | article    | color  |
-- +------------+--------+
-- | t-shirt    | white  |
-- | t-shirt    | green  |
-- | polo-shirt | black  |
-- | tank top   | blue   |
-- | t-shirt    | pink   |
-- | polo-shirt | red    |
-- | tank top   | white  |
-- | tank top   | blue   |
-- | polo-shirt | purple |
-- +------------+--------+

SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

-- +------------+--------+------------+-----------+
-- | article    | color  | shirt_size | last_worn |
-- +------------+--------+------------+-----------+
-- | polo-shirt | black  | M          |        10 |
-- | polo-shirt | red    | M          |         5 |
-- | tank top   | blue   | M          |        15 |
-- | polo-shirt | purple | M          |        50 |
-- +------------+--------+------------+-----------+


PDATE shirts SET shirt_size='L' WHERE article='polo-shirt';

-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        1 | t-shirt    | white  | S          |        10 |
-- |        2 | t-shirt    | green  | S          |       200 |
-- |        3 | polo-shirt | black  | L          |        10 |
-- |        4 | tank top   | blue   | S          |        50 |
-- |        5 | t-shirt    | pink   | S          |         0 |
-- |        6 | polo-shirt | red    | L          |         5 |
-- |        7 | tank top   | white  | S          |       200 |
-- |        8 | tank top   | blue   | M          |        15 |
-- |        9 | polo-shirt | purple | L          |        50 |
-- +----------+------------+--------+------------+-----------+

UPDATE shirts SET last_worn=0 WHERE last_worn=15;

-- +----------+------------+--------+------------+-----------+
-- | shirt_id | article    | color  | shirt_size | last_worn |
-- +----------+------------+--------+------------+-----------+
-- |        1 | t-shirt    | white  | S          |        10 |
-- |        2 | t-shirt    | green  | S          |       200 |
-- |        3 | polo-shirt | black  | L          |        10 |
-- |        4 | tank top   | blue   | S          |        50 |
-- |        5 | t-shirt    | pink   | S          |         0 |
-- |        6 | polo-shirt | red    | L          |         5 |
-- |        7 | tank top   | white  | S          |       200 |
-- |        8 | tank top   | blue   | M          |         0 |
-- |        9 | polo-shirt | purple | L          |        50 |
-- +----------+------------+--------+------------+-----------+

UPDATE shirts SET shirt_size='XS', color='off white' WHERE color='white'; 

-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        2 | t-shirt    | green     | S          |       200 |
-- |        3 | polo-shirt | black     | L          |        10 |
-- |        4 | tank top   | blue      | S          |        50 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo-shirt | red       | L          |         5 |
-- |        7 | tank top   | off white | XS         |       200 |
-- |        8 | tank top   | blue      | M          |         0 |
-- |        9 | polo-shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+

DELETE FROM shirts WHERE last_worn=200; 

-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        3 | polo-shirt | black     | L          |        10 |
-- |        4 | tank top   | blue      | S          |        50 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo-shirt | red       | L          |         5 |
-- |        8 | tank top   | blue      | M          |         0 |
-- |        9 | polo-shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+


DELETE FROM shirts WHERE article='tank top'; 
-- +----------+------------+-----------+------------+-----------+
-- | shirt_id | article    | color     | shirt_size | last_worn |
-- +----------+------------+-----------+------------+-----------+
-- |        1 | t-shirt    | off white | XS         |        10 |
-- |        3 | polo-shirt | black     | L          |        10 |
-- |        5 | t-shirt    | pink      | S          |         0 |
-- |        6 | polo-shirt | red       | L          |         5 |
-- |        9 | polo-shirt | purple    | L          |        50 |
-- +----------+------------+-----------+------------+-----------+

DELETE FROM shirts; # Deletes the table without the deleting the schema 
DROP TABLE shirts; 



















