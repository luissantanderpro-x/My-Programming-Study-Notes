# <SQL> | Ch6.1 - Seed Data Into Books
# ----------------------------------------------------

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


SELECT title FROM books; 


-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | The Namesake                                        |
-- | Norse Mythology                                     |
-- | American Gods                                       |
-- | Interpreter of Maladies                             |
-- | A Hologram for the King: A Novel                    |
-- | The Circle                                          |
-- | The Amazing Adventures of Kavalier & Clay           |
-- | Just Kids                                           |
-- | A Heartbreaking Work of Staggering Genius           |
-- | Coraline                                            |
-- | What We Talk About When We Talk About Love: Stories |
-- | Where I'm Calling From: Selected Stories            |
-- | White Noise                                         |
-- | Cannery Row                                         |
-- | Oblivion: Stories                                   |
-- | Consider the Lobster                                |
-- | 10% Happier                                         |
-- | fake_book                                           |
-- | Lincoln In The Bardo                                |
-- +-----------------------------------------------------+