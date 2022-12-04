-- Active: 1670173412614@@127.0.0.1@3306@instagram_clone_db
-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Schema stuff
-- -------------------------------------------------------------
-- -------------------------------------------------------------
CREATE DATABASE instagram_clone_db;
USE instagram_clone_db;
-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Creating tables
-- -------------------------------------------------------------
-- -------------------------------------------------------------
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS photos (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL UNIQUE,
    user_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);
CREATE TABLE IF NOT EXISTS comments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (photo_id) REFERENCES photos(id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY (user_id, photo_id)
);
CREATE TABLE IF NOT EXISTS follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (followee_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (follower_id, followee_id)
);
CREATE TABLE IF NOT EXISTS tags (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS photo_tags (
    photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
);
-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Alter statements
-- -------------------------------------------------------------
-- -------------------------------------------------------------
ALTER TABLE users
MODIFY created_at TIMESTAMP DEFAULT NOW();
ALTER TABLE users
MODIFY username VARCHAR(255) NOT NULL UNIQUE;
-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Describing tables
-- -------------------------------------------------------------
-- -------------------------------------------------------------
DESCRIBE users;
-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- The show tables function
-- -------------------------------------------------------------
-- -------------------------------------------------------------
SHOW TABLES;