# <SQL> | Ch8.5 - Curdate, Curtime, and Now 
# ------------------------------------------------------------


-- CURDATE() - gives current date
-- CURTIME() - gives current time 
-- NOW()	  - gives current datetime 

SELECT CURDATE();
SELECT CURTIME();
SELECT NOW(); 


INSERT INTO people(name, birthdate, birthtime, birthdt) 
VALUES("Toaster", CURDATE(), CURTIME(), NOW());

DELETE FROM people WHERE name='Microwave'; 

SELECT * FROM people; 
-- +---------+---------+------------+-----------+---------------------+
-- | user_id | name    | birthdate  | birthtime | birthdt             |
-- +---------+---------+------------+-----------+---------------------+
-- |       1 | Padma   | 1983-11-11 | 10:07:35  | 1983-11-11 10:07:35 |
-- |       2 | Larry   | 1943-12-25 | 04:10:42  | 1943-12-25 04:10:42 |
-- |       3 | Toaster | 2017-12-08 | 11:25:56  | 2017-12-08 11:25:56 |
-- +---------+---------+------------+-----------+---------------------+