# <MySQL> | Ch3.8 - DELETE code challenge 
# --------------------------------------

SELECT * FROM cats; 

-- +--------+----------------+-------------------+------+
-- | cat_id | name           | breed             | age  |
-- +--------+----------------+-------------------+------+
-- |      1 | Ringo          | British Shorthair |    4 |
-- |      2 | Cindy          | Maine Coon        |   12 |
-- |      3 | Dumbledore     | Maine Coon        |   12 |
-- |      5 | Misty          | Shorthair         |   14 |
-- |      6 | George Michael | Ragdoll           |    9 |
-- |      7 | Jack           | Sphynx            |    7 |
-- +--------+----------------+-------------------+------+

DELETE FROM cats WHERE age=4;

SELECT * FROM cats; 

-- +--------+----------------+------------+------+
-- | cat_id | name           | breed      | age  |
-- +--------+----------------+------------+------+
-- |      2 | Cindy          | Maine Coon |   12 |
-- |      3 | Dumbledore     | Maine Coon |   12 |
-- |      5 | Misty          | Shorthair  |   14 |
-- |      6 | George Michael | Ragdoll    |    9 |
-- |      7 | Jack           | Sphynx     |    7 |
-- +--------+----------------+------------+------+

DELETE FROM cats WHERE age=cat_id; 

-- +--------+----------------+------------+------+
-- | cat_id | name           | breed      | age  |
-- +--------+----------------+------------+------+
-- |      2 | Cindy          | Maine Coon |   12 |
-- |      3 | Dumbledore     | Maine Coon |   12 |
-- |      5 | Misty          | Shorthair  |   14 |
-- |      6 | George Michael | Ragdoll    |    9 |
-- +--------+----------------+------------+------+

DELETE FROM cats; 

SELECT * FROM cats; 

# empty set (0.00sec) 