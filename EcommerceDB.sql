-- Active: 1669960513165@@127.0.0.1@3306@online_shop_db
-- -----------------------------------------------
-- -----------------------------------------------
-- These SQL statements are meant to create tables
-- -----------------------------------------------
-- -----------------------------------------------
-- CREATE TABLE IF NOT EXISTS customers (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(30) NOT NULL,
--     last_name VARCHAR(30) NOT NULL,
--     email VARCHAR(60) NOT NULL
-- );
-- CREATE TABLE IF NOT EXISTS orders (
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     order_date DATE NOT NULL,
--     amount DECIMAL(10, 2) NOT NULL,
--     customer_id INT NOT NULL,
--     FOREIGN KEY (customer_id) REFERENCES customers(id)
-- );
-- -----------------------------------------------
-- -----------------------------------------------
-- These sql statements added the starter data to the newly created tables
-- -----------------------------------------------
-- -----------------------------------------------
-- INSERT INTO customers(first_name, last_name, email)
-- VALUES ('Boy', 'George', 'george@gmail.com'),
--     ('George', 'Michael', 'gm@gmail.com'),
--     ('David', 'Bowie', 'david@gmail.com'),
--     ('Blue', 'Steele', 'blue@gmail.com'),
--     ('Bette', 'Davis', 'bette@gmail.com');
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
    ('2017-11-11', 35.50, 1),
    ('2014-12-12', 800.67, 2),
    ('2015-01-03', 12.50, 2);