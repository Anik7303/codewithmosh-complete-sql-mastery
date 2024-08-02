USE sql_store;

SELECT * FROM customers;

SELECT first_name, last_name, points
FROM customers
WHERE
    customer_id = 1;

SELECT first_name, last_name, points
FROM customers
    -- WHERE customer_id = 1
ORDER BY first_name;