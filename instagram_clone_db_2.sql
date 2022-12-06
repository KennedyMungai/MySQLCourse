-- Active: 1670314421326@@127.0.0.1@3306@instagram_clone_db
-- --------------------------------------
-- --------------------------------------
-- Simple show tables query 
-- --------------------------------------
-- --------------------------------------
SHOW TABLES;
-- --------------------------------------
-- --------------------------------------
-- A query to find the 5 oldest users
-- --------------------------------------
-- --------------------------------------
SELECT *
FROM users
ORDER BY created_at DESC
LIMIT 5;
-- --------------------------------------
-- --------------------------------------
-- A query to find out on what day of 
-- the week most users register on
-- --------------------------------------
-- --------------------------------------
SELECT DAYNAME(created_at) AS day,
    COUNT(*) AS count
FROM users
GROUP BY day
ORDER BY count DESC
LIMIT 2;
-- --------------------------------------
-- --------------------------------------
-- A query to find the users whi have 
-- never posted a photo
-- --------------------------------------
-- --------------------------------------
SELECT username,
    image_url
FROM users
    LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;