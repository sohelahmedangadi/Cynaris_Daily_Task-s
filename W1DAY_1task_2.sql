USE CYNARIS_INTERNSHIP;

-- CREATING A TABLE:
CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    signup_date DATE
);

-- INSERTING A RECORDS IN TABLE:
INSERT INTO customers (customer_name, email, phone, city, signup_date) VALUES
('Ravi Kumar', 'ravi.kumar@email.com', '9876543210', 'Bengaluru', '2025-03-10'),
('Anita Sharma', 'anita.sharma@email.com', '9876543211', 'Mumbai', '2025-04-15'),
('Suresh Patil', 'suresh.patil@email.com', '9876543212', 'Pune', '2025-05-20'),
('Priya Singh', 'priya.singh@email.com', '9876543213', 'Delhi', '2025-06-01'),
('Manoj Reddy', 'manoj.reddy@email.com', '9876543214', 'Hyderabad', '2025-06-25'),
('Deepa Nair', 'deepa.nair@email.com', '9876543215', 'Kochi', '2025-07-10'),
('Arjun Rao', 'arjun.rao@email.com', '9876543216', 'Chennai', '2025-08-05'),
('Kavita Joshi', 'kavita.joshi@email.com', '9876543217', 'Nagpur', '2025-09-12'),
('Sohel Ahmed', 'sohel.ahmed@email.com', '9876543218', 'Ballari', '2025-10-01'),
('Ramesh Iyer', 'ramesh.iyer@email.com', '9876543219', 'Chennai', '2025-11-18');

SELECT * FROM sales;
SELECT * FROM customers;

-- #1 INNER JOIN:
SELECT s.sale_id, s.product_name, s.total_amount, c.customer_name, c.city, c.email FROM sales AS s
INNER JOIN customers AS c ON s.customer_id = c.customer_id;

-- #2 LEFT JOIN:
SELECT s.sale_id, s.product_name, s.customer_name FROM sales AS s
LEFT JOIN customers AS c ON s.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- #3 RIGHT JOIN:
SELECT s.customer_id, s.customer_name, c.email, c.phone, c.city FROM customers AS c
RIGHT JOIN sales AS s ON c.customer_id = s.customer_id;

-- #4 FULL JOIN:
SELECT * FROM sales
FULL JOIN customers ON sales.customer_id = customers.customer_id;

-- INSERTING DUPLICATES:
INSERT INTO sales (product_name, category, quantity, unit_price, total_amount, customer_name, sale_date, region, customer_id) VALUES
('Tablet', 'Electronics', 1, 18000.00, 18000.00, 'Ravi Kumar', '2026-02-15', 'South', 1),
('Charger', 'Accessories', 2, 600.00, 1200.00, 'Ravi Kumar', '2026-02-16', 'South', 1);

-- DUPLICATES:
SELECT c.customer_id, c.customer_name, c.city, s.product_name, s.total_amount
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
WHERE c.customer_name = 'Ravi Kumar';

-- Explain and fix duplicate rows caused by JOINs
SELECT DISTINCT c.customer_name, c.city
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id;

-- SELF JOIN:
SELECT a.sale_id AS sale_1, a.product_name AS product_1, a.customer_name AS customer_1,
       b.sale_id AS sale_2, b.product_name AS product_2, b.customer_name AS customer_2,
       a.category
FROM sales a
JOIN sales b 
    ON a.category = b.category 
    AND a.sale_id < b.sale_id;

