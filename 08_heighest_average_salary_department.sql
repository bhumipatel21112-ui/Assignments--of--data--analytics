USE sql_homework;

SELECT
    d.department_id,
    d.department_name,
    AVG(e.salary) AS average_salary
FROM departments d
JOIN employees e
    ON d.department_id = e.department_id
GROUP BY
    d.department_id,
    d.department_name
ORDER BY average_salary DESC
LIMIT 1;