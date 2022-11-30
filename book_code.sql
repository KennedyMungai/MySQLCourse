-- Active: 1669786832810@@127.0.0.1@3306@books_db
SELECT CONCAT (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'Short Title'
FROM books;
-- Subquery stuff
-- -----------------------------------------------------
SELECT *
FROM books
WHERE pages = (
        SELECT Min(pages)
        FROM books
    )