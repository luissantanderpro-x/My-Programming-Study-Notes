# <SQL> | Ch6.5 - Like 
# ----------------------------------------------------

# Like allows us to search for a book with something related 
# in a book shop it would be i am looking for a book with the 
# author name like Dave or Dan I forgot the name but yeah it has 
# a D name. 

# Pattern Matching 

# Searching Queries....

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%'; # Percentage symbols are called wild cards

-- +-------------------------------------------+--------------+
-- | title                                     | author_fname |
-- +-------------------------------------------+--------------+
-- | A Hologram for the King: A Novel          | Dave         |
-- | The Circle                                | Dave         |
-- | A Heartbreaking Work of Staggering Genius | Dave         |
-- | Oblivion: Stories                         | David        |
-- | Consider the Lobster                      | David        |
-- | 10% Happier                               | Dan          |
-- | fake_book                                 | Freida       |
-- +-------------------------------------------+--------------+  

SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- +-------------------------------------------+--------------+
-- | title                                     | author_fname |
-- +-------------------------------------------+--------------+
-- | A Hologram for the King: A Novel          | Dave         |
-- | The Circle                                | Dave         |
-- | A Heartbreaking Work of Staggering Genius | Dave         |
-- | Oblivion: Stories                         | David        |
-- | Consider the Lobster                      | David        |
-- | 10% Happier                               | Dan          |
-- +-------------------------------------------+--------------+

SELECT title FROM books WHERE title lIKE 'the%';

-- +-------------------------------------------+
-- | title                                     |
-- +-------------------------------------------+
-- | The Namesake                              |
-- | The Circle                                |
-- | The Amazing Adventures of Kavalier & Clay |
-- +-------------------------------------------+

# More on Wild Cards 


# See Wild cards down below 

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____'; # with 4 digit stock quantities

-- +----------------------+----------------+
-- | title                | stock_quantity |
-- +----------------------+----------------+
-- | Lincoln In The Bardo |           1000 |
-- +----------------------+----------------+

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__'; # with 4 digit stock quantities

-- +-----------------------------------------------------+----------------+
-- | title                                               | stock_quantity |
-- +-----------------------------------------------------+----------------+
-- | The Namesake                                        |             32 |
-- | Norse Mythology                                     |             43 |
-- | American Gods                                       |             12 |
-- | Interpreter of Maladies                             |             97 |
-- | The Circle                                          |             26 |
-- | The Amazing Adventures of Kavalier & Clay           |             68 |
-- | Just Kids                                           |             55 |
-- | What We Talk About When We Talk About Love: Stories |             23 |
-- | Where I'm Calling From: Selected Stories            |             12 |
-- | White Noise                                         |             49 |
-- | Cannery Row                                         |             95 |
-- | Consider the Lobster                                |             92 |
-- | 10% Happier                                         |             29 |
-- +-----------------------------------------------------+----------------+

# But What If...
# I'm searching for a book with a '%' in it
# I'm searching for a book with an '_' in it 

# Searching for special characters

SELECT title FROM books WHERE title LIKE '%\%%'; 

-- +-------------+
-- | title       |
-- +-------------+
-- | 10% Happier |
-- +-------------+

SELECT title FROM books WHERE title LIKE '%\_%%'; 

-- +-----------+
-- | title     |
-- +-----------+
-- | fake_book |
-- +-----------+









