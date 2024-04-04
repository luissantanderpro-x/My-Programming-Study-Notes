# <SQL> | Ch5.6 - Intro to reverse 
# ------------------------------------------------------



SELECT REVERSE('Hello World'); 

-- +------------------------+
-- | REVERSE('Hello World') |
-- +------------------------+
-- | dlroW olleH            |
-- +------------------------+

# Exmaple Palindrome 

SELECT CONCAT('woof', REVERSE('woof')); 

-- +---------------------------------+
-- | CONCAT('woof', REVERSE('woof')) |
-- +---------------------------------+
-- | wooffoow                        |
-- +---------------------------------+


SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;