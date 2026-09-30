USE company_db;

DROP TABLE IF EXISTS Purchase_Date;

CREATE TABLE Purchase_Date (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    purchase_date DATE
);

INSERT INTO Purchase_Date VALUES
(101, 1, '2026-01-10'),
(102, 1, '2026-03-15'),
(103, 1, '2026-06-20'),
(104, 2, '2026-02-05'),
(105, 2, '2026-05-12'),
(106, 3, '2026-01-25'),
(107, 3, '2026-08-10'),
(108, 4, '2026-04-18');

-- Q7: First and last purchase date for each customer
SELECT
    customer_id,
    MIN(purchase_date) AS first_purchase_date,
    MAX(purchase_date) AS last_purchase_date
FROM Purchase_Date
GROUP BY customer_id;