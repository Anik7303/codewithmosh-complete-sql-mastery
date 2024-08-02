USE sql_store;

SELECT * FROM customers;

SELECT * FROM orders;

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_id, c.first_name, o.order_id
FROM orders o
    RIGHT JOIN customers c ON c.customer_id = o.customer_id;

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY order_id DESC;