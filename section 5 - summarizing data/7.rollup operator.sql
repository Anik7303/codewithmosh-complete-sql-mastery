-- ROLLUP operator is only available in MySQL

USE sql_invoicing;

SELECT client_id, SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY
    client_id
WITH
    ROLLUP;

SELECT state, city, SUM(invoice_total) AS total_sales
FROM invoices i
    JOIN clients c USING (client_id)
GROUP BY
    state,
    city
WITH
    ROLLUP;

USE sql_store;

SELECT c.state, c.city, SUM(oi.quantity * oi.unit_price) AS total_sales
FROM
    customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
GROUP BY
    c.state,
    c.city
WITH
    ROLLUP;

SELECT c.state, c.city, CONCAT(
        c.first_name, ' ', c.last_name
    ) AS name, SUM(oi.quantity * oi.unit_price) AS total_sales
FROM
    customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
GROUP BY
    c.state,
    c.city,
    name
WITH
    ROLLUP;