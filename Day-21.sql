USE company_db;


DROP TABLE IF EXISTS Purchase;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Purchase (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50)
);

INSERT INTO Customer VALUES
(1, 'Amit'),
(2, 'Rahul'),
(3, 'Priya'),
(4, 'Neha'),
(5, 'Ravi');

INSERT INTO Purchase VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mobile'),
(103, 1, 'Mouse'),
(104, 4, 'Keyboard');

SELECT c.customer_id, c.customer_name
FROM Customer c
LEFT JOIN Purchase p
ON c.customer_id = p.customer_id
WHERE p.customer_id IS NULL;