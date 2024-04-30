# <SQL> | Ch5.8 - Upper and Lower 
# ------------------------------------------------------


SELECT UPPER('Hello World');
-- +----------------------+
-- | UPPER('Hello World') |
-- +----------------------+
-- | HELLO WORLD          |
-- +----------------------+


SELECT LOWER('HELLO WORLD');
-- +----------------------+
-- | LOWER('HELLO WORLD') |
-- +----------------------+
-- | hello world          |
-- +----------------------+

# Example: 
# -------------
SELECT UPPER('Hello World');
 
SELECT LOWER('Hello World');
 
SELECT UPPER(title) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
 
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) FROM books;