# <SQL> | Ch6.2 - Using DISTINCT 
# ----------------------------------------------------


# Before using DISTINCT Selecting Unique data from the table 

SELECT author_lname FROM books; 
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Lahiri         |
-- | Gaiman         |
-- | Gaiman         |
-- | Lahiri         |
-- | Eggers         |
-- | Eggers         |
-- | Chabon         |
-- | Smith          |
-- | Eggers         |
-- | Gaiman         |
-- | Carver         |
-- | Carver         |
-- | DeLillo        |
-- | Steinbeck      |
-- | Foster Wallace |
-- | Foster Wallace |
-- | Harris         |
-- | Harris         |
-- | Saunders       |
-- +----------------+


# If you don't want to duplicate last names use DISTINCT 
SELECT DISTINCT author_lname FROM books;

-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Lahiri         |
-- | Gaiman         |
-- | Eggers         |
-- | Chabon         |
-- | Smith          |
-- | Carver         |
-- | DeLillo        |
-- | Steinbeck      |
-- | Foster Wallace |
-- | Harris         |
-- | Saunders       |
-- +----------------+

SELECT DISTINCT CONCAT(author_fname, " ", author_lname) AS 'fullname' FROM books; 

-- +-----------------------------------------+
-- | CONCAT(author_fname, " ", author_lname) |
-- +-----------------------------------------+
-- | Jhumpa Lahiri                           |
-- | Neil Gaiman                             |
-- | Dave Eggers                             |
-- | Michael Chabon                          |
-- | Patti Smith                             |
-- | Raymond Carver                          |
-- | Don DeLillo                             |
-- | John Steinbeck                          |
-- | David Foster Wallace                    |
-- | Dan Harris                              |
-- | Freida Harris                           |
-- | George Saunders                         |
-- +-----------------------------------------+

SELECT DISTINCT author_fname, author_lname FROM books; 










