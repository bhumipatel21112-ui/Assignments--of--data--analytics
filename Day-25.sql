USE company_db;

DROP TABLE IF EXISTS Employee_Department;

CREATE TABLE Employee_Department (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);

INSERT INTO Employee_Department VALUES
(1, 'Amit', 40000, 1),
(2, 'Rahul', 45000, 2),
(3, 'Priya', 50000, NULL),
(4, 'Neha', 55000, 1),
(5, 'Ravi', 60000, NULL),
(6, 'Pooja', 48000, 3);

-- Q9: Employees without any department
SELECT
    emp_id,
    emp_name,
    salary
FROM Employee_Department
WHERE department_id IS NULL;