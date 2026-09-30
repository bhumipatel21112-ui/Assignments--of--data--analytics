 CREATE DATABASE Company_db;
 USE Company_db;

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);


INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');


INSERT INTO Employee VALUES
(1, 'Amit', 40000, 1),
(2, 'Rahul', 45000, 1),
(3, 'Priya', 50000, 1),
(4, 'Neha', 42000, 1),
(5, 'Ravi', 48000, 1),
(6, 'Pooja', 46000, 1),
(7, 'Ankit', 44000, 1),
(8, 'Kiran', 41000, 1),
(9, 'Rohit', 47000, 1),
(10, 'Sneha', 43000, 1),
(11, 'Vikas', 49000, 1),
(12, 'Nisha', 51000, 1),
(13, 'Arjun', 40000, 2),
(14, 'Simran', 45000, 2),
(15, 'Manish', 55000, 3);


SELECT 
    department_id,
    COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 10;