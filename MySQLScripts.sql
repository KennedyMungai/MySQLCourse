-- Active: 1669786832810@@127.0.0.1@3306@CatnipMOFO
CREATE TABLE cats (
    cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);
SELECT name,
    age
FROM cats;