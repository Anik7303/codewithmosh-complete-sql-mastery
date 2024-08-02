USE sql_store;

SELECT * FROM orders;

SELECT * FROM customers;

SELECT * FROM shippers;

SELECT o.order_id, o.order_date AS date, c.customer_id, CONCAT(
        c.first_name, ' ', c.last_name
    ) AS name, c.address, s.name AS shipper
FROM
    orders o
    LEFT JOIN customers c ON o.customer_id = c.customer_id
    LEFT JOIN shippers s ON s.shipper_id = o.shipper_id
ORDER BY c.customer_id;

SELECT o.order_id, o.order_date AS date, c.customer_id, CONCAT(
        c.first_name, ' ', c.last_name
    ) AS name, c.address, o.shipped_date, s.name AS shipper
FROM
    orders o
    RIGHT JOIN customers c ON o.customer_id = c.customer_id
    LEFT JOIN shippers s ON s.shipper_id = o.shipper_id
ORDER BY c.customer_id, date;

SELECT o.order_id, o.order_date AS date, c.customer_id, CONCAT(
        c.first_name, ' ', c.last_name
    ) AS name, c.address, o.shipped_date, s.name AS shipper
FROM
    customers c
    LEFT JOIN orders o ON o.customer_id = c.customer_id
    LEFT JOIN shippers s ON s.shipper_id = o.shipper_id
ORDER BY c.customer_id, date;