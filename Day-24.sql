USE company_db;

DROP TABLE IF EXISTS Employee_Dept;

CREATE TABLE Employee_Dept (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);

INSERT INTO Employee_Dept VALUES
(1, 'Amit', 40000, 1),
(2, 'Rahul', 45000, 1),
(3, 'Priya', 50000, 1),
(4, 'Neha', 60000, 2),
(5, 'Ravi', 65000, 2),
(6, 'Pooja', 55000, 2),
(7, 'Ankit', 35000, 3),
(8, 'Kiran', 40000, 3),
(9, 'Rohit', 45000, 3);

-- Q8: Department with highest average salary
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM Employee_Dept
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;