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