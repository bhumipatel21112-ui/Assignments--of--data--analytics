USE sql_homework;

SELECT
    c.customer_id,
    c.customer_name
FROM customers c
LEFT JOIN purchases p
    ON c.customer_id = p.customer_id
WHERE p.purchase_id IS NULL;