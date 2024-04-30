# <SQL> | Ch6.4 - Limits 
# ----------------------------------------------------

# Limit - allows us to specify a number for how many results we want to select 

SELECT title FROM books LIMIT 10; 

-- +-------------------------------------------+
-- | title                                     |
-- +-------------------------------------------+
-- | The Namesake                              |
-- | Norse Mythology                           |
-- | American Gods                             |
-- | Interpreter of Maladies                   |
-- | A Hologram for the King: A Novel          |
-- | The Circle                                |
-- | The Amazing Adventures of Kavalier & Clay |
-- | Just Kids                                 |
-- | A Heartbreaking Work of Staggering Genius |
-- | Coraline                                  |
-- +-------------------------------------------+

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5; 

-- | --------------------------------------------------
-- | title                            | released_year |
-- +----------------------------------+---------------+
-- | Lincoln In The Bardo             |          2017 |
-- | Norse Mythology                  |          2016 |
-- | 10% Happier                      |          2014 |
-- | The Circle                       |          2013 |
-- | A Hologram for the King: A Novel |          2012 |
-- +----------------------------------+---------------+

# Or with lower bound and upper bound 

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0, 5; 

# Straight from the docs if you want to select all the way to the end of the rows in the
# table to retrieve all rows in the gigantic table 

SELECT * FROM books LIMIT 95,18446744073709551615; 
SELECT title FROM books LIMIT 5, 123219476457;

