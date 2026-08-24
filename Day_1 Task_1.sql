CREATE DATABASE CYNARIS_INTERNSHIP;
USE CYNARIS_INTERNSHIP;

-- CREATING SALES TABLE:
CREATE TABLE sales (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    customer_name VARCHAR(100),
    sale_date DATE NOT NULL,
    region VARCHAR(50)
);

-- INSERTING SAMPLE RECORDS:
INSERT INTO sales (product_name, category, quantity, unit_price, total_amount, customer_name, sale_date, region) VALUES
('Laptop', 'Electronics', 2, 55000.00, 110000.00, 'Ravi Kumar', '2026-01-05', 'South'),
('Wireless Mouse', 'Accessories', 5, 500.00, 2500.00, 'Anita Sharma', '2026-01-07', 'North'),
('Office Chair', 'Furniture', 3, 4500.00, 13500.00, 'Suresh Patil', '2026-01-10', 'West'),
('Smartphone', 'Electronics', 1, 25000.00, 25000.00, 'Priya Singh', '2026-01-12', 'East'),
('Desk Lamp', 'Furniture', 4, 800.00, 3200.00, 'Manoj Reddy', '2026-01-15', 'South'),
('Keyboard', 'Accessories', 6, 1200.00, 7200.00, 'Deepa Nair', '2026-01-18', 'North'),
('Monitor', 'Electronics', 2, 9000.00, 18000.00, 'Arjun Rao', '2026-01-20', 'West'),
('Bookshelf', 'Furniture', 1, 6000.00, 6000.00, 'Kavita Joshi', '2026-01-22', 'East'),
('Headphones', 'Accessories', 3, 1500.00, 4500.00, 'Sohel Ahmed', '2026-01-25', 'South'),
('Printer', 'Electronics', 1, 12000.00, 12000.00, 'Ramesh Iyer', '2026-01-28', 'North'),
('Office Desk', 'Furniture', 2, 8500.00, 17000.00, 'Neha Gupta', '2026-02-01', 'West'),
('External HDD', 'Electronics', 4, 3500.00, 14000.00, 'Vikram Shah', '2026-02-03', 'East'),
('USB Cable', 'Accessories', 10, 200.00, 2000.00, 'Pooja Mehta', '2026-02-05', 'South'),
('Webcam', 'Electronics', 3, 2200.00, 6600.00, 'Sanjay Verma', '2026-02-08', 'North'),
('Filing Cabinet', 'Furniture', 2, 5000.00, 10000.00, 'Divya Menon', '2026-02-10', 'West');

-- Write 10 SELECT queries on a sample sales database
-- #1
SELECT * FROM sales;

-- #2
SELECT category FROM sales;

-- #3
SELECT * FROM sales
WHERE category = 'Electronics';

-- #4 Using WHERE with AND Operators:
SELECT * FROM sales 
WHERE category = 'Accessories' AND quantity > 5;

-- #5 Using WHERE with OR Operators:
SELECT * FROM sales
WHERE category = 'Accessories' OR category = 'Furniture';

-- #5 Using WHERE with NOT Operators:
SELECT * FROM sales
WHERE  NOT region = 'North';

-- #6 Applying LIKE Operator:
SELECT * FROM sales
WHERE customer_name LIKE 'S%';

-- #7 Applying IN Operator:
SELECT * FROM sales
WHERE region IN ('North', 'South');

-- #8 Applying BETWEEN Operator:
SELECT product_name, category, quantity, unit_price FROM sales
WHERE quantity BETWEEN 5 AND 10;

-- #9 Applying NOT BETWEEN Operator:
SELECT product_name, category, quantity, unit_price FROM sales
WHERE quantity NOT BETWEEN 5 AND 10;

-- #10 Applying IS NULL Operator:
-- INSERTING NULL VALUES:
INSERT INTO sales (product_name, category, quantity, unit_price, total_amount, customer_name, sale_date, region) VALUES
('Wireless Charger', NULL, 2, 700.00, 1400.00, 'Amit Verma', '2026-02-12', 'South'),
('Table Lamp', 'Furniture', 3, 900.00, 2700.00, NULL, '2026-02-14', 'North'),
('Router', 'Electronics', 1, 3000.00, 3000.00, 'Sneha Kulkarni', '2026-02-16', NULL);

-- IS NULL:
SELECT * FROM sales
WHERE category IS NULL;







