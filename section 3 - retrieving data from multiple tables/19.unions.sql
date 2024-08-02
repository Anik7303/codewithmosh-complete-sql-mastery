USE sql_store;

SELECT order_id, order_date, 'active' AS status
FROM orders
WHERE
    order_date >= '2019-01-01'
UNION
SELECT order_id, order_date, 'archived' AS status
FROM orders
WHERE
    order_date < '2019-01-01'
ORDER BY order_date DESC;

-- some examples
SELECT first_name FROM customers UNION SELECT name FROM shippers;

SELECT name FROM shippers UNION SELECT first_name FROM customers;

SELECT first_name AS full_name
FROM customers
UNION
SELECT name
FROM shippers;