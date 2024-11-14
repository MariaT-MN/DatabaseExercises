-- reverse and uppercase the following sentence
SELECT REVERSE(LEFT('Why does my cat look at me with such hatred?',44)); 

-- using the books database, replace spaces in titles with '->'
USE books;

SELECT REPLACE(title, ' ', '->') FROM books;

-- print out 2 columnes, authors first name then last name. Last name will be printed backwards and have aliases for the columns with forwards and backwards
SELECT author_fname AS 'forwards', 
    REVERSE(author_lname) AS 'backwards' 
    FROM books;

-- print out the authors first and last name in one column in all caps with the alias 'full name in caps'
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

-- print out column alias 'blurb' with the titles and year it was released in a sentance
SELECT CONCAT(title, ' was released in ', released_year) AS 'blurb' FROM books;

-- print the title and charachter count of each
SELECT title, CHAR_LENGTH(title) AS 'Character Count' FROM books;

-- print out the title 'short title' with the first 10 characters followed by elipses, column author (lastname, first) and the quantity of items in stock
SELECT CONCAT(RIGHT(title, 10), '...') AS 'Short Title', 
    CONCAT(author_lname, ', ', author_fname) AS 'Author', 
    CONCAT(stock_quantity, ' in stock') AS 'QTY in Stock' 
    FROM books;