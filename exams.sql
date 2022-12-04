-- Active: 1670146345366@@127.0.0.1@3306@exams_db
-----------------------------------------------------
-----------------------------------------------------
-- Create the Database
-----------------------------------------------------
-----------------------------------------------------
-- CREATE DATABASE IF NOT EXISTS exams_db;
-----------------------------------------------------
-----------------------------------------------------
-- Use the database
-----------------------------------------------------
-----------------------------------------------------
-- USE exams_db;
-----------------------------------------------------
-----------------------------------------------------
-- Create the tables
-----------------------------------------------------
-----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS students (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL
-- );
-- CREATE TABLE IF NOT EXISTS papers (
--     title VARCHAR(50) NOT NULL PRIMARY KEY,
--     grade INT NOT NULL,
--     student_id INT NOT NULL,
--     FOREIGN KEY(student_id) REFERENCES students(id)
-- );
-----------------------------------------------------
-----------------------------------------------------
-- Select statement
-----------------------------------------------------
-----------------------------------------------------
-- SELECT *
-- FROM students,
--     papers;
-----------------------------------------------------
-----------------------------------------------------
-- Inserting the information to the various tables
-----------------------------------------------------
-----------------------------------------------------
-- INSERT INTO students(first_name)
-- VALUES ('Caleb'),
--     ('Samantha'),
--     ('Raj'),
--     ('Carlos'),
--     ('Lisa');
-- INSERT INTO papers(student_id, title, grade)
-- VALUES (1, 'My first book report', 60),
--     (1, 'My second book report', 75),
--     (2, 'Russian lit through the ages', 94),
--     (2, 'De Montaigne and The art of the essay', 98),
--     (4, 'Borges and magical realism', 89);
-----------------------------------------------------
-----------------------------------------------------
-- Deleting the tables
-----------------------------------------------------
-----------------------------------------------------
-- DROP TABLES students,
-- papers;
-----------------------------------------------------
-----------------------------------------------------
-- First Exercise Solution
-----------------------------------------------------
-----------------------------------------------------
SELECT first_name,
    title,
    grade
FROM students
    RIGHT JOIN papers on students.id = papers.student_id
ORDER BY first_name DESC,
    grade DESC;
-----------------------------------------------------
-----------------------------------------------------
-- Second Exercise Solution
-----------------------------------------------------
-----------------------------------------------------
SELECT first_name,
    title,
    grade
FROM students
    LEFT JOIN papers on students.id = papers.student_id;
-----------------------------------------------------
-----------------------------------------------------
-- Third Exercise Solution
-----------------------------------------------------
-----------------------------------------------------
SELECT first_name,
    IFNULL((title), 'missing'),
    IFNULL((grade), 0)
FROM students
    LEFT JOIN papers on students.id = papers.student_id;