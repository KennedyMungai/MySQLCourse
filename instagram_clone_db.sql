-- Active: 1670173412614@@127.0.0.1@3306@instagram_clone_db
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
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