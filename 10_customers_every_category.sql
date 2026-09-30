USE sql_homework;

SELECT
    c.customer_id,
    c.customer_name
FROM customers c
JOIN purchases p
    ON c.customer_id = p.customer_id
JOIN products pr
    ON p.product_id = pr.product_id
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(DISTINCT pr.category_id) = (
    SELECT COUNT(*)
    FROM categories
);