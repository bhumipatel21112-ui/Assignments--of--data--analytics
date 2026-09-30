USE sql_homework;

SELECT
    department_id,
    employee_id,
    employee_name,
    salary,
    SUM(salary) OVER (
        PARTITION BY department_id
        ORDER BY employee_id
    ) AS running_total_salary
FROM employees
WHERE department_id IS NOT NULL
ORDER BY department_id, employee_id;