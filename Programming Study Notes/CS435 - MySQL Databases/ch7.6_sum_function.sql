# <SQL> | Ch7.6 - The Sum Function 
# ---------------------------------------

# Sum all pages in the entire database 

SELECT SUM(pages) FROM books; 

SELECT SUM(released_year) FROM books; 


SELECT author_lname, author_fname, SUM(pages)
FROM books
GROUP BY author_lname, author_fname; 

# Output: 
# ------
-- +------------+
-- | SUM(pages) |
-- +------------+
-- |       6623 |
-- +------------+
-- 1 row in set (0.00 sec)

-- +--------------------+
-- | SUM(released_year) |
-- +--------------------+
-- |              37996 |
-- +--------------------+
-- 1 row in set (0.00 sec)

-- +----------------+--------------+------------+
-- | author_lname   | author_fname | SUM(pages) |
-- +----------------+--------------+------------+
-- | Carver         | Raymond      |        702 |
-- | Chabon         | Michael      |        634 |
-- | DeLillo        | Don          |        320 |
-- | Eggers         | Dave         |       1293 |
-- | Foster Wallace | David        |        672 |
-- | Gaiman         | Neil         |        977 |
-- | Harris         | Dan          |        256 |
-- | Harris         | Freida       |        428 |
-- | Lahiri         | Jhumpa       |        489 |
-- | Saunders       | George       |        367 |
-- | Smith          | Patti        |        304 |
-- | Steinbeck      | John         |        181 |
+----------------+--------------+------------+