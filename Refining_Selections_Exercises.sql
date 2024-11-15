-- use books database
USE books;

-- return titles that contain 'stories'
SELECT title FROM books WHERE title LIKE '%stories%';

-- return the longest book, print title and page count
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- alias summary, return the title and year for 3 most recent books
-- printed as 'title - year'
SELECT CONCAT(title, ' - ', released_year) AS Summary FROM books ORDER BY released_year DESC LIMIT 3; 

-- return title and last name where all books with an author_lname that contains a space
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- reutrn the 3 lowest stock quantity with title, year and stock
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity LIMIT 3;

-- return title and last name, sorted by last name then by title
SELECT title, author_lname FROM books ORDER BY author_lname, title;

-- alias yell, out put 'MY FAVORITE AUTHOR IS' then author first and last name, sorted by last name
SELECT CONCAT('MY FAVORITE AUTHOR IS ', author_fname, ' ', author_lname, '!') AS YELL FROM books ORDER BY author_lname;

-- alias yell, out put 'MY FAVORITE AUTHOR IS' then author first and last name BUT no duplicates
SELECT DISTINCT CONCAT('MY FAVORITE AUTHOR IS ', author_fname, ' ', author_lname, '!') AS YELL FROM books;