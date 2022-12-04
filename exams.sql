CREATE DATABASE IF NOT EXISTS exams_db;
USE exams_db;
CREATE TABLE IF NOT EXISTS students (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS papers (
    title VARCHAR(50) NOT NULL PRIMARY KEY,
    grade CHAR NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY(student_id) REFERENCES students(id)
);