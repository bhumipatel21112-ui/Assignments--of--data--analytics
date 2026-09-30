CREATE DATABASE testdb;
USE testdb;
CREATE TABLE student(
    id INT,
    name VARCHAR(50),
    marks INT

);

INSERT INTO student VALUES
(1,'Rahul',75),
(2,'Amit',65),
(3,'Priya',88);

SELECT * FROM student;
