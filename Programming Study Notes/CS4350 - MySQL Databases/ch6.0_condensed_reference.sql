# <SQL> | Chapter 6 - Reference Guide by Chapter 
# --------------------------------------------------------------------



# --------------------------------------------------------------------
# Ch6.3 - Soritng data using ORDER BY 
# --------------------------------------------------------------------
SELECT author_lname FROM books;
 
SELECT author_lname FROM books ORDER BY author_lname;
 
SELECT title FROM books;
 
SELECT title FROM books ORDER BY title;
SELECT author_lname FROM books ORDER BY author_lname DESC;
 
SELECT released_year FROM books;
 
SELECT released_year FROM books ORDER BY released_year;
 
SELECT released_year FROM books ORDER BY released_year DESC;
 
SELECT released_year FROM books ORDER BY released_year ASC;
 
SELECT title, released_year, pages FROM books ORDER BY released_year;
 
SELECT title, pages FROM books ORDER BY released_year;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 2;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 3;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1;
 
SELECT title, author_fname, author_lname 
FROM books ORDER BY 1 DESC;
 
SELECT author_lname, title
FROM books ORDER BY 2;
 
SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;