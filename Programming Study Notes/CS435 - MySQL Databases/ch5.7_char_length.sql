# <SQL> | Ch5.7 - Char Length 
# ------------------------------------------------------

# Char Length - Tells you how many characters are in a string

SELECT CHAR_LENGTH('Hello World'); 

-- +----------------------------+
-- | CHAR_LENGTH('Hello World') |
-- +----------------------------+
-- |                         11 |
-- +----------------------------+


SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;

-- +----------------+--------+
-- | author_lname   | length |
-- +----------------+--------+
-- | Lahiri         |      6 |
-- | Gaiman         |      6 |
-- | Gaiman         |      6 |
-- | Lahiri         |      6 |
-- | Eggers         |      6 |
-- | Eggers         |      6 |
-- | Chabon         |      6 |
-- | Smith          |      5 |
-- | Eggers         |      6 |
-- | Gaiman         |      6 |
-- | Carver         |      6 |
-- | Carver         |      6 |
-- | DeLillo        |      7 |
-- | Steinbeck      |      9 |
-- | Foster Wallace |     14 |
-- | Foster Wallace |     14 |
-- +----------------+--------+

# More Example Code 

SELECT CHAR_LENGTH('Hello World');
 
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;