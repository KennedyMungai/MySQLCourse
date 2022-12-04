-- Active: 1670158045845@@127.0.0.1@3306@movies_db
-- --------------------------------------------
-- --------------------------------------------
-- Using the database
-- --------------------------------------------
-- --------------------------------------------
USE movies_db;
-- --------------------------------------------
-- --------------------------------------------
-- Creating the tables
-- --------------------------------------------
-- --------------------------------------------
CREATE TABLE IF NOT EXISTS reviewers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS series (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    released_year YEAR NOT NULL,
    genre VARCHAR(50)
);
-- --------------------------------------------
-- --------------------------------------------
-- Data Inserts
-- --------------------------------------------
-- --------------------------------------------
INSERT INTO series (title, released_year, genre)
VALUES ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2009, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ("Bojack Horseman", 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ("Curb Your Enthusiasm", 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ("Freaks And Geeks", 1999, 'Comedy'),
    ("General Hospital", 1963, 'Drama'),
    ("Halt And Catch Fire", 2014, 'Drama'),
    ("Malcom In The Middle", 2000, 'Comedy'),
    ("Pushing Daisies", 2007, 'Comedy'),
    ("Seinfeld", 1989, 'Comedy'),
    ("Stranger Things", 2016, 'Drama');
INSERT INTO reviewers (first_name, last_name)
VALUES ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steel'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');