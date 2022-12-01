-- Active: 1669874133351@@127.0.0.1@3306@dates_and_times_db
CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthday DATETIME
);
-- Inserting values into the table
-- -------------------------------
INSERT INTO people(name, birthdate, birthtime, birthday)
VALUES (
        'Padma',
        '1983-11-11',
        '10:07:35',
        '1983-1-1 10:07:35'
    ),
    (
        'Larry',
        '1943-12-25',
        '04:10:42',
        '1943-12-25 04:10:42'
    );
--- A simple table for learning about timestamps
-- ---------------------------------------------
CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);