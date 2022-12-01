-- Active: 1669874133351@@127.0.0.1@3306@books_db
SELECT title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS 'Genre'
FROM books