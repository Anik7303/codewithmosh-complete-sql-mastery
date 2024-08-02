USE sql_store;

SELECT * FROM customers;

SELECT * FROM orders;

SELECT * FROM order_items;

SELECT * FROM orders o JOIN customers USING (customer_id);

SELECT
    SUM(quantity * unit_price) AS spent,
    customer_id,
    CONCAT(
        c.first_name,
        ' ',
        c.last_name
    ) AS customer,
    state
FROM
    order_items oi
    JOIN orders o USING (order_id)
    JOIN customers c USING (customer_id)
GROUP BY
    customer_id,
    customer;

SELECT CONCAT(
        c.first_name, ' ', c.last_name
    ) AS customer, SUM(quantity * unit_price) AS spent
FROM
    order_items oi
    LEFT JOIN orders o USING (order_id)
    LEFT JOIN customers c USING (customer_id)
WHERE
    state = 'VA'
GROUP BY
    customer
HAVING
    spent > 100;

-- advised solution
SELECT CONCAT(
        c.first_name, ' ', c.last_name
    ) AS name, c.address, SUM(oi.quantity * oi.unit_price) AS total_sales
FROM
    customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
WHERE
    state = 'VA'
GROUP BY
    name,
    c.address
HAVING
    total_sales > 100;