# <SQL> | Ch7 - Aggrevate Functions Challenge 
# ---------------------------------------

# Print the number of books in the database 
SELECT COUNT(book_id) AS "# Books" FROM books; 


# Print out how many books were released in each year
SELECT released_year, COUNT(book_id) FROM books 
GROUP BY released_year; 

# Print out the total number of books in stock 
SELECT SUM(stock_quantity) FROM books; 

# Find the average released_year for each author 
SELECT author_fname, author_lname, 
AVG(released_year) FROM books GROUP BY author_lname, author_fname; 

# Find the full name of the author who wrote the longest book 
SELECT CONCAT(author_fname, ' ', author_lname) FROM books 
WHERE pages = (SELECT Max(pages) FROM books); 

# Or doing the same 

SELECT CONCAT(author_fname, ' ', author_lname) FROM books 
ORDER BY pages DESC LIMIT 1; 

SELECT released_year AS year, COUNT(*) AS '# books', 
AVG(pages) AS 'avg pages' FROM books
GROUP BY released_year; 