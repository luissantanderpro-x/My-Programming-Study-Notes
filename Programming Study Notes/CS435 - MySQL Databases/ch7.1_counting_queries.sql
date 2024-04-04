# <SQL> | Ch7.1 - The Count Function 
# ----------------------------------------------------
# Aggrevate functions: will allow us to aggregate or combine data to get meaning out of it. 

# Count 
# ------
SELECT COUNT(*) FROM books;
SELECT COUNT(author_fname) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books; 
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;
SELECT title FROM books WHERE title LIKE '%the%';
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

# How many books are in the database 

SELECT COUNT(*) FROM books; 

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |       19 |
-- +----------+


SELECT COUNT(DISTINCT author_fname) FROM books; 

-- +------------------------------+
-- | COUNT(DISTINCT author_fname) |
-- +------------------------------+
-- |                           12 |
-- +------------------------------+

SELECT COUNT(DISTINCT author_fname, author_lname) FROM books; 

-- +--------------------------------------------+
-- | COUNT(DISTINCT author_fname, author_lname) |
-- +--------------------------------------------+
-- |                                         12 |
-- +--------------------------------------------+

SELECT COUNT(*) AS "# of starting the title" FROM books WHERE title LIKE "%the%";

-- +-------------------------+
-- | # of starting the title |
-- +-------------------------+
-- |                       6 |
-- +-------------------------+