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
-- Inserting a few rows of data
-- ---------------------------------------------
INSERT INTO comments(content)
VALUES ('Some article name content thing');
-- A simple table for when an item is updated
-- ----------------------------------------------
CREATE TABLE comments2 (
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);
-- Inserting items into the second comments TABLE
-- ----------------------------------------------
INSERT INTO comments2(content)
VALUES ('This aint a scene, it is a goddamn arms race'),
    ('My somgs know what you did in the dark'),
    ('Radioactiove'),
    ('Eclipse'),
    ('Echoes'),
    ('Tomorrow');
-- A simple exercise section for tweets
-- ------------------------------------
CREATE TABLE tweets (
    content VARCHAR(100),
    username VARCHAR(50),
    created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);
INSERT INTO tweets(content, username)
VALUES ('Levitate', 'Dua Lipa'),
    ('Without Me', 'Halsey'),
    ('Just Dance', 'Lady Gaga'),
    ('Im Every Woman', 'Whitney Houston');