
USE company_db;


CREATE TABLE Employee1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);


INSERT INTO Employee1 (emp_id, emp_name, salary, department_id)
VALUES
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


SELECT AVG(salary) AS median_salary
FROM
(
    SELECT 
        salary,
        ROW_NUMBER() OVER (ORDER BY salary) AS rn,
        COUNT(*) OVER () AS total_count
    FROM Employee1
) AS temp
WHERE rn IN (
    (total_count + 1) DIV 2,
    (total_count + 2) DIV 2
);