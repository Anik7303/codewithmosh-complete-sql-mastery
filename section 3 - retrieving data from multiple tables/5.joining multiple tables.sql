USE sql_store;

SELECT * FROM orders;

SELECT * FROM customers;

SELECT * FROM order_statuses;

--

SELECT *
FROM
    orders o
    JOIN customers c ON c.customer_id = o.customer_id
    JOIN order_statuses os ON o.status = os.order_status_id;

SELECT o.order_id, o.order_date, c.first_name, c.last_name, c.address, os.name AS status
FROM
    orders o
    JOIN customers c ON c.customer_id = o.customer_id
    JOIN order_statuses os ON o.status = os.order_status_id;