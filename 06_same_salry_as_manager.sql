USE sql_homework;

SELECT
    e.employee_id,
    e.employee_name,
    e.salary,
    e.manager_id
FROM employees e
JOIN employees m
    ON e.manager_id = m.employee_id
WHERE e.salary = m.salary;