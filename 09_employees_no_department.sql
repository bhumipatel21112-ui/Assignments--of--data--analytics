USE sql_homework;

SELECT
    employee_id,
    employee_name,
    salary
FROM employees
WHERE department_id IS NULL;