-- Active: 1669874133351@@127.0.0.1@3306
SELECT title,
    author_lname,
    CASE
        WHEN title LIKE '%Stories%' THEN 'Short Stories'
        WHEN title IS 'Just Kids'
        OR 'A Heartbreaking Work' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'GENRE'
FROM books