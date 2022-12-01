-- Active: 1669874133351@@127.0.0.1@3306@books_db
SELECT title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 50 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 100 AND 150 THEN '***'
        ELSE '****'
    END AS 'Stock'
FROM books