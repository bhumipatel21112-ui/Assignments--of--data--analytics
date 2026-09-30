USE company_db;

DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 50000, NULL),
(2, 'Rahul', 40000, 1),
(3, 'Priya', 50000, 1),
(4, 'Neha', 60000, 1),
(5, 'Ravi', 60000, 1),
(6, 'Pooja', 45000, 3);

SELECT
    e.emp_id,
    e.emp_name,
    e.salary,
    m.emp_name AS manager_name,
    m.salary AS manager_salary
FROM Employee e
JOIN Employee m
    ON e.manager_id = m.emp_id
WHERE e.salary = m.salary;