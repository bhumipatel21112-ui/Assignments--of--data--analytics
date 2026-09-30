USE sql_homework;

SELECT
    c.customer_id,
    c.customer_name,
    MIN(p.purchase_date) AS first_purchase_date,
    MAX(p.purchase_date) AS last_purchase_date
FROM customers c
JOIN purchases p
    ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY c.customer_id;