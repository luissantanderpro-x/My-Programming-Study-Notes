# <SQL> | Ch8.6 - Formatting Dates 
# ------------------------------------------------------------

# For formatting dates
# https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html#function_date-format

# Formatting dates (and times)
# ----------------
# DAY()
# DAYNAME()
# DAYOFWEEK()
# DAYOFYEAR()

SELECT name, DAY(birthdate), DAYNAME(birthdate) FROM people; 
SELECT name, DAYOFWEEK(birthdate), DAYOFYEAR(birthdate) FROM people; 

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');


SELECT DATE_FORMAT('1992-06-23 22:23:00', 'Was born on a %W') AS 'Luis day was born'; 

-- +-----------------------+
-- | Luis day was born     |
-- +-----------------------+
-- | Was born on a Tuesday |
-- +-----------------------+

SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
 
SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;