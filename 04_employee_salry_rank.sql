USE sql_homework;

SELECT
    employee_id,
    employee_name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees
ORDER BY salary_rank;