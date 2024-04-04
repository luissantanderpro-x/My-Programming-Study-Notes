# <SQL> | Ch7.3 - MIN & MAX 
# ----------------------------------------------------

SELECT MIN(pages) FROM books; 
SELECT MAX(pages) FROM books; 
SELECT MAX(released_year) FROM books; 

 
SELECT MAX(released_year) 
FROM books;
 
SELECT MAX(pages), title
FROM books;

# What if I want to get the longest title of the longest book. 


# Outputs:
# ------------------
-- +------------+
-- | MIN(pages) |
-- +------------+
-- |        176 |
-- +------------+
-- 1 row in set (0.00 sec)

-- +------------+
-- | MAX(pages) |
-- +------------+
-- |        634 |
-- +------------+

-- +--------------------+
-- | MAX(released_year) |
-- +--------------------+
-- |               2017 |
-- +--------------------+
-- 1 row in set (0.00 sec)

-- +------------+--------------+
-- | MAX(pages) | title        |
-- +------------+--------------+
-- |        634 | The Namesake |
-- +------------+--------------+