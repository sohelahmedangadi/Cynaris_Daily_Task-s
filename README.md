# CYNARIS Internship – Practical SQL Tasks

## Overview

This repository contains the SQL work completed for the **CYNARIS Internship Practical Tasks**.

The tasks focus on writing SQL `SELECT` queries and using different filtering operators on a sample sales database.

---

## Practical Tasks

The following tasks were completed:

* Write 10 `SELECT` queries on a sample sales database
* Use `WHERE` with `AND`, `OR`, and `NOT` operators
* Apply `LIKE`, `IN`, `BETWEEN`, and `IS NULL` operators
* Export one result set to CSV

---

## Database Used

**Database Name:**

```text
CYNARIS_INTERNSHIP
```

**Table Name:**

```text
sales
```

The `sales` table contains information such as:

* Sale ID
* Product Name
* Category
* Quantity
* Unit Price
* Total Amount
* Customer Name
* Sale Date
* Region

---

## Queries Completed

### 1. Select All Records

```sql
SELECT * FROM sales;
```

Displays all records from the `sales` table.

### 2. Select a Specific Column

```sql
SELECT category FROM sales;
```

Displays the category of each sale.

### 3. WHERE Operator

```sql
SELECT * FROM sales
WHERE category = 'Electronics';
```

Displays only Electronics sales.

### 4. WHERE with AND

```sql
SELECT * FROM sales
WHERE category = 'Accessories'
AND quantity > 5;
```

Finds Accessories products where the quantity is greater than 5.

### 5. WHERE with OR

```sql
SELECT * FROM sales
WHERE category = 'Accessories'
OR category = 'Furniture';
```

Finds sales belonging to either Accessories or Furniture.

### 6. WHERE with NOT

```sql
SELECT * FROM sales
WHERE NOT region = 'North';
```

Displays sales from regions other than North.

### 7. LIKE Operator

```sql
SELECT * FROM sales
WHERE customer_name LIKE 'S%';
```

Finds customers whose names start with `S`.

### 8. IN Operator

```sql
SELECT * FROM sales
WHERE region IN ('North', 'South');
```

Finds sales from the North or South region.

### 9. BETWEEN Operator

```sql
SELECT product_name, category, quantity, unit_price
FROM sales
WHERE quantity BETWEEN 5 AND 10;
```

Finds products with quantities between 5 and 10.

### 10. NOT BETWEEN

```sql
SELECT product_name, category, quantity, unit_price
FROM sales
WHERE quantity NOT BETWEEN 5 AND 10;
```

Finds products whose quantities are outside the range of 5 to 10.

---

## IS NULL Operator

Additional records were inserted with `NULL` values to demonstrate the `IS NULL` operator.

Example:

```sql
SELECT * FROM sales
WHERE category IS NULL;
```

This query finds records where the category is missing (`NULL`).

Other `NULL` values were also added to the `customer_name` and `region` columns for testing.

---

## CSV Export

One of the practical requirements was to **export a result set to CSV**.

For example, the following query can be used:

```sql
SELECT *
FROM sales
WHERE category = 'Electronics';
```

The result can then be exported as a `.csv` file using the database tool's **Export/Save Results** option.

Example output file:

```text
electronics_sales.csv
```

---

## Files

```text
CYNARIS-INTERNSHIP/
│
├── README.md
├── sales_database.sql
└── electronics_sales.csv
```

* `README.md` – Documentation for the practical tasks
* `sales_database.sql` – Database, table, sample data, and SQL queries
* `electronics_sales.csv` – Exported SQL result set

---

## Concepts Practiced

| SQL Concept | Used |
| ----------- | ---- |
| SELECT      | ✅    |
| WHERE       | ✅    |
| AND         | ✅    |
| OR          | ✅    |
| NOT         | ✅    |
| LIKE        | ✅    |
| IN          | ✅    |
| BETWEEN     | ✅    |
| NOT BETWEEN | ✅    |
| IS NULL     | ✅    |
| CSV Export  | ✅    |

---

## ✅ Task Completion

All the required practical SQL concepts were implemented using the sample `sales` database.

**Internship:** CYNARIS
**Task Type:** Practical SQL Task
**Topic:** SELECT Queries and SQL Operators
