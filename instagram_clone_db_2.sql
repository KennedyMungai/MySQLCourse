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
SELECT username
FROM users
    LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;
-- --------------------------------------
-- --------------------------------------
-- A query to find the users whO have 
-- the most likes on a photo
-- --------------------------------------
-- --------------------------------------
SELECT username,
    image_url,
    COUNT(*) AS number_of_likes
FROM photos
    INNER JOIN likes ON photos.id = likes.photo_id
    INNER JOIN users ON users.id = photos.user_id
GROUP BY image_url
ORDER BY number_of_likes DESC
LIMIT 1;
-- --------------------------------------
-- --------------------------------------
-- A query to find the average number of
-- times the average user posts
-- --------------------------------------
-- --------------------------------------
SELECT username,
    COUNT(image_url) AS number_of_posts
FROM users
    INNER JOIN photos ON users.id = photos.user_id
GROUP BY username;
-- --------------------------------------
SELECT (
        SELECT COUNT(*)
        FROM photos
    ) / (
        SELECT COUNT(*)
        FROM users
    ) AS avg;
-- --------------------------------------
-- --------------------------------------
-- 5 of the most commonly used hash tags
-- --------------------------------------
-- --------------------------------------
SELECT tag_name,
    COUNT(*) AS tag_number
FROM tags
    INNER JOIN photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tag_name
ORDER BY tag_number DESC
LIMIT 5;
-- --------------------------------------
-- --------------------------------------
-- Finding the users who have liked every
-- photo on the site
-- --------------------------------------
-- --------------------------------------
SELECT username,
    COUNT(photo_id) as no_of_likes
FROM users
    INNER JOIN likes ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING no_of_likes = 257;