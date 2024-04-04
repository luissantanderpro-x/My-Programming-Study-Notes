# <SQL> | Ch8.7 - Date Math 
# ------------------------------------------------------------

-- DATEDIFF(expr1,expr2) returns expr1 − expr2 expressed as a value in days from one date to the other.
--  expr1 and expr2 are date or date-and-time expressions. Only the date parts of the values
--   are used in the calculation.


SELECT DATEDIFF('2007-12-31 23:59:59','2007-12-30');


SELECT name, birthdate, NOW(), DATEDIFF(NOW(), birthdate) FROM people; 


-- DATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)


SELECT birthdt FROM people; 

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people; 
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 10 SECOND) FROM people;
 
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;
 
SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;
 
SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;
 
SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;