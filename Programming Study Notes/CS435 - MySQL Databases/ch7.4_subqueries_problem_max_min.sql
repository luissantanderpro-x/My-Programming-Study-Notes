# <SQL> | Ch7.4 - SUBQUERIES - A Problem with Min and Max 
# ----------------------------------------------------

-- Subqueries in which you can't use MIN(pages) in the front of select 
-- so you need to use WHERE or the ORDER BY in order to get this to work 

-- source ch7.4_subqueries_problem_max_min.sql

SELECT title, pages FROM books WHERE pages = (SELECT MIN(pages) FROM books); 
SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books); 

# Or Using ORDER BY pages in Asceding order 

SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1; 
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1; 

# Output: 
# --------------
-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- +-----------------------------------------------------+-------+

-- +-------------------------------------------+-------+
-- | title                                     | pages |
-- +-------------------------------------------+-------+
-- | The Amazing Adventures of Kavalier & Clay |   634 |
-- +-------------------------------------------+-------+

-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- +-----------------------------------------------------+-------+
-- 1 row in set (0.00 sec)

-- +-------------------------------------------+-------+
-- | title                                     | pages |
-- +-------------------------------------------+-------+
-- | The Amazing Adventures of Kavalier & Clay |   634 |
-- +-------------------------------------------+-------+