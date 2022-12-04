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