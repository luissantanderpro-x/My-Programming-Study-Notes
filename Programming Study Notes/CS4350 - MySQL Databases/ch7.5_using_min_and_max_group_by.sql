# <SQL> | Ch7.5 - Using Min an Max for Group By 
# ----------------------------------------------------

# Find the year each author published their first book using Min 
SELECT author_fname, author_lname, MIN(released_year) 
FROM books GROUP BY author_lname, author_fname; 


# Find the year each author published their last book using Max 
SELECT author_fname, author_lname, MAX(released_year) 
FROM books GROUP BY author_lname, author_fname; 


# Find the longest page count for each author 
SELECT author_fname, author_lname, MAX(pages) FROM books; 

# Finds the longest page count for each author 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, 
	   MAX(pages) AS 'longest book'
FROM books 
GROUP BY author_lname, 
		 author_fname; 


# Output: 
# -----------
-- +----------------------+--------------+
-- | author               | longest book |
-- +----------------------+--------------+
-- | Raymond Carver       |          526 |
-- | Michael Chabon       |          634 |
-- | Don DeLillo          |          320 |
-- | Dave Eggers          |          504 |
-- | David Foster Wallace |          343 |
-- | Neil Gaiman          |          465 |
-- | Dan Harris           |          256 |
-- | Freida Harris        |          428 |
-- | Jhumpa Lahiri        |          291 |
-- | George Saunders      |          367 |
-- | Patti Smith          |          304 |
-- | John Steinbeck       |          181 |
-- +----------------------+--------------+