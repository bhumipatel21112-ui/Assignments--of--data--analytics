USE company_db;


CREATE TABLE Employee3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2)
);


INSERT INTO Employee3 VALUES
(1, 'Amit', 40000),
(2, 'Rahul', 55000),
(3, 'Priya', 70000),
(4, 'Neha', 45000),
(5, 'Ravi', 60000),
(6, 'Pooja', 50000),
(7, 'Ankit', 70000),
(8, 'Kiran', 35000);


SELECT
    emp_id,
    emp_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employee3;