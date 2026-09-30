USE company_db;


CREATE TABLE Employee2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);


INSERT INTO Employee2 VALUES
(1, 'Amit', 40000, 1),
(2, 'Rahul', 45000, 1),
(3, 'Priya', 50000, 1),
(4, 'Neha', 42000, 2),
(5, 'Ravi', 48000, 2),
(6, 'Pooja', 46000, 2),
(7, 'Ankit', 44000, 3),
(8, 'Kiran', 41000, 3),
(9, 'Rohit', 47000, 3);


SELECT
    emp_id,
    emp_name,
    department_id,
    salary,
    SUM(salary) OVER (
        PARTITION BY department_id
        ORDER BY emp_id
    ) AS running_total
FROM Employee2;