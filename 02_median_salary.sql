USE sql_homework;

SELECT AVG(salary) AS median_salary
FROM (
    SELECT
        salary,
        ROW_NUMBER() OVER (ORDER BY salary) AS rn,
        COUNT(*) OVER () AS total_count
    FROM employees
) AS x
WHERE rn IN (
    FLOOR((total_count + 1) / 2),
    CEIL((total_count + 1) / 2)
);