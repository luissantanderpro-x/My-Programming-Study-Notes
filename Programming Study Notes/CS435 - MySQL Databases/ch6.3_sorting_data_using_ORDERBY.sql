# <SQL> | Ch6.3 - Sorting our data using ORDERBY
# ----------------------------------------------------

# Sorting our results
# Ascending by default 

SELECT author_lname FROM books ORDER BY author_lname; 
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Carver         |
-- | Carver         |
-- | Chabon         |
-- | DeLillo        |
-- | Eggers         |
-- | Eggers         |
-- | Eggers         |
-- | Foster Wallace |
-- | Foster Wallace |
-- | Gaiman         |
-- | Gaiman         |
-- | Gaiman         |
-- | Harris         |
-- | Harris         |
-- | Lahiri         |
-- | Lahiri         |
-- | Saunders       |
-- | Smith          |
-- | Steinbeck      |
-- +----------------+

SELECT title FROM books ORDER BY title; 

-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | 10% Happier                                         |
-- | A Heartbreaking Work of Staggering Genius           |
-- | A Hologram for the King: A Novel                    |
-- | American Gods                                       |
-- | Cannery Row                                         |
-- | Consider the Lobster                                |
-- | Coraline                                            |
-- | fake_book                                           |
-- | Interpreter of Maladies                             |
-- | Just Kids                                           |
-- | Lincoln In The Bardo                                |
-- | Norse Mythology                                     |
-- | Oblivion: Stories                                   |
-- | The Amazing Adventures of Kavalier & Clay           |
-- | The Circle                                          |
-- | The Namesake                                        |
-- | What We Talk About When We Talk About Love: Stories |
-- | Where I'm Calling From: Selected Stories            |
-- | White Noise                                         |
-- +-----------------------------------------------------+

# Descending changed 
SELECT author_lname FROM books ORDER BY author_lname DESC;

-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Steinbeck      |
-- | Smith          |
-- | Saunders       |
-- | Lahiri         |
-- | Lahiri         |
-- | Harris         |
-- | Harris         |
-- | Gaiman         |
-- | Gaiman         |
-- | Gaiman         |
-- | Foster Wallace |
-- | Foster Wallace |
-- | Eggers         |
-- | Eggers         |
-- | Eggers         |
-- | DeLillo        |
-- | Chabon         |
-- | Carver         |
-- | Carver         |
-- +----------------+

SELECT title, released_year, pages FROM books ORDER BY released_year; 

-- +-----------------------------------------------------+---------------+-------+
-- | title                                               | released_year | pages |
-- +-----------------------------------------------------+---------------+-------+
-- | Cannery Row                                         |          1945 |   181 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |   176 |
-- | White Noise                                         |          1985 |   320 |
-- | Where I'm Calling From: Selected Stories            |          1989 |   526 |
-- | Interpreter of Maladies                             |          1996 |   198 |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 |   634 |
-- | American Gods                                       |          2001 |   465 |
-- | A Heartbreaking Work of Staggering Genius           |          2001 |   437 |
-- | fake_book                                           |          2001 |   428 |
-- | The Namesake                                        |          2003 |   291 |
-- | Coraline                                            |          2003 |   208 |
-- | Oblivion: Stories                                   |          2004 |   329 |
-- | Consider the Lobster                                |          2005 |   343 |
-- | Just Kids                                           |          2010 |   304 |
-- | A Hologram for the King: A Novel                    |          2012 |   352 |
-- | The Circle                                          |          2013 |   504 |
-- | 10% Happier                                         |          2014 |   256 |
-- | Norse Mythology                                     |          2016 |   304 |
-- | Lincoln In The Bardo                                |          2017 |   367 |
-- +-----------------------------------------------------+---------------+-------+

# Ordering using shortcut 2 by specificying ordering by first name title = 1 author_fname = 2
SELECT title, author_fname, author_lname FROM books ORDER BY 2;


# Order by two different columns not used often but you can does 
# sort on last name first and following up with sorting first name 
SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname; 



