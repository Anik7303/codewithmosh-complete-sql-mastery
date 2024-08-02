USE sql_store;

SELECT * FROM customers;

-- % any number of characters
-- _ single character

SELECT * FROM customers WHERE last_name LIKE 'b%';

SELECT * FROM customers WHERE last_name LIKE "brush%";

SELECT * FROM customers WHERE last_name LIKE '%b%';

SELECT * FROM customers WHERE last_name LIKE '%y';

SELECT * FROM customers WHERE last_name LIKE '_y';
-- match a single character by using _
SELECT * FROM customers WHERE last_name LIKE 'b____y';