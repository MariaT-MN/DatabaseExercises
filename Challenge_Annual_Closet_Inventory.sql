-- create database shirts_db
CREATE DATABASE shirts_db;

-- USE database
USE shirts_db;

-- create shirts table - id, article of shirt, color, size, last worn (days)
CREATE TABLE shirts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL,
    size VARCHAR(10) NOT NULL,
    days_last_worn INT NOT NULL
);

-- insert data in a single line
INSERT INTO shirts(article, color, size, days_last_worn) VALUES ('t-shirt', 'white', 'S', 10), ('t-shirt', 'green', 'S', 200), ('polo shirt', 'black', 'M', 10), ('tank top', 'blue', 'S', 50), ('t-shirt', 'pink', 'S', 0), ('polo shirt', 'red', 'M', 5), ('tank top', 'white', 'S', 200), ('tank top', 'blue', 'M', 15);

-- add a new medium purple polo shirt last worn 50 days ago 
INSERT INTO shirts(article, color, size, days_last_worn) VALUES ('polo shirt', 'purple', 'M', 50);

-- print at all medium shirts
SELECT article, color, size, days_last_worn FROM shirts WHERE size='M';

-- print only article and color
SELECT article, color FROM shirts;

-- update polo shirts to change to size large
UPDATE shirts SET size='L' WHERE article='polo shirt';

-- update the shirt last worn 15 days ago to 0
UPDATE shirts SET days_last_worn=0 WHERE days_last_worn=15;

-- update all white shirts to XS and off white
UPDATE shirts SET color='off white', size='XS' WHERE color='white';

-- delete all old shirts last worn 200 days ago
DELETE FROM shirts WHERE days_last_worn=200;

-- delete all tank tops
DELETE FROM shirts WHERE article='tank top';

-- delete all shirts
DELETE FROM shirts;

-- drop the entire shirts table
DROP TABLE shirts;