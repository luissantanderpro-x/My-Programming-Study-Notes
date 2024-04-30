# <SQL> | Ch5.4 - Intro to Substring 
# ------------------------------------------------------

SELECT SUBSTRING('Hello World', 7);  # -> World 


SELECT SUBSTRING(title, 1, 10) FROM books;

-- +-------------------------+
-- | SUBSTRING(title, 1, 10) |
-- +-------------------------+
-- | The Namesa              |
-- | Norse Myth              |
-- | American G              |
-- | Interprete              |
-- | A Hologram              |
-- | The Circle              |
-- | The Amazin              |
-- | Just Kids               |
-- | A Heartbre              |
-- | Coraline                |
-- | What We Ta              |
-- | Where I'm               |
-- | White Nois              |
-- | Cannery Ro              |
-- | Oblivion:               |
-- | Consider t              |
-- +-------------------------+

# Shortcut for Substring 
SUBSTR()


# Concat with Substring Combination 
SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;

SELECT SUBSTRING('Hello World', 1, 4);
 
SELECT SUBSTRING('Hello World', 7);
 
SELECT SUBSTRING('Hello World', 3, 8);
 
SELECT SUBSTRING('Hello World', 3);
 
SELECT SUBSTRING('Hello World', -3);
 
SELECT SUBSTRING('Hello World', -7);
 
SELECT title FROM books;
 
SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);
 
SELECT SUBSTRING(title, 1, 10) FROM books;
 
SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;
 
SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
 
SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    )
FROM books;
 
source book_code.sql
 
SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;
 
source book_code.sql
