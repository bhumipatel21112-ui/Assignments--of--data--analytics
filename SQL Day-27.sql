USE LibraryDB;
CREATE TABLE IF NOT EXISTS Books (
book_id INT PRIMARY KEY,
book_name VARCHAR(100) NOT NULL,
author_name VARCHAR(150) UNIQUE,
price DECIMAL(10,2),
category VARCHAR(100),
publication_date DATE
);
DESC Books;
INSERT INTO Books
(book_id, book_name, author_name, price, category, publication_date)
VALUES
(101, 'Python Basics', 'Amit Sharma', 450.00, 'Programming', '2026-09-15');
SELECT* FROM Books;
SELECT book_name, category FROM Books;
