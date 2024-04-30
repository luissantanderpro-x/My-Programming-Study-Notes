# <SQL> | Ch7.2 - Group By 
# ----------------------------------------------------

# Group By - summerarizes or aggregates identical data into single rows. 

# The GROUP BY clause is a SQL command that is used to group rows that have the same values.
# Returns unique values such unqiue author last names instead of duplicates. 

-- You can disable sql_mode=only_full_group_by by some command you can try this by terminal or MySql IDE
-- set global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
-- set session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- +----------------+----------+
-- | author_lname   | COUNT(*) |
-- +----------------+----------+
-- | Carver         |        2 |
-- | Chabon         |        1 |
-- | DeLillo        |        1 |
-- | Eggers         |        3 |
-- | Foster Wallace |        2 |
-- | Gaiman         |        3 |
-- | Harris         |        2 |
-- | Lahiri         |        2 |
-- | Saunders       |        1 |
-- | Smith          |        1 |
-- | Steinbeck      |        1 |
-- +----------------+----------+


SELECT title, author_lname FROM books;
 
SELECT title, author_lname FROM books
GROUP BY author_lname
SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;
 
 
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
 
SELECT released_year FROM books;
 
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
 
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released')
AS "Amount of Books Released Per Year" FROM books GROUP BY released_year;

-- +-----------------------------------+
-- | Amount of Books Released Per Year |
-- +-----------------------------------+
-- | In 1945 1 book(s) released        |
-- | In 1981 1 book(s) released        |
-- | In 1985 1 book(s) released        |
-- | In 1989 1 book(s) released        |
-- | In 1996 1 book(s) released        |
-- | In 2000 1 book(s) released        |
-- | In 2001 3 book(s) released        |
-- | In 2003 2 book(s) released        |
-- | In 2004 1 book(s) released        |
-- | In 2005 1 book(s) released        |
-- | In 2010 1 book(s) released        |
-- | In 2012 1 book(s) released        |
-- | In 2013 1 book(s) released        |
-- | In 2014 1 book(s) released        |
-- | In 2016 1 book(s) released        |
-- | In 2017 1 book(s) released        |
-- +-----------------------------------+