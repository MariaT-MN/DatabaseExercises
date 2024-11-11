-- Create a database Animals

CREATE database Animals;

-- Create a table full of cats with id, name, breed, and age THEN insert values

CREATE TABLE cats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    breed VARCHAR(100) NOT NULL,
    age INT NOT NULL,
)

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

-- Show column properties and show table

SELECT * FROM cats;
DESC cats;

-- Show just the id columns

SELECT id FROM cats;

-- Show just name and breed columns

SELECT name, breed FROM cats;

-- Show just the cats where the breeds are Tabby with only name and age columns

SELECT name, age FROM cats WHERE breed='Tabby';

-- Show columns id and age where they are the same number

SELECT id, age FROM cats WHERE id=age;