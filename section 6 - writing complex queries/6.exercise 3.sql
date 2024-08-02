-- Find customers who have ordered lettuce (id = 3)
-- Select customer_id, first_name, last_name

USE sql_store;

-- using subqueries
SELECT
    customer_id,
    first_name,
    last_name
FROM customers
WHERE
    customer_id IN (
        SELECT customer_id
        FROM order_items
            JOIN orders USING (order_id)
        WHERE
            product_id = 3
    );
-- using join
SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name
FROM
    order_items oi
    JOIN orders USING (order_id)
    JOIN products USING (product_id)
    JOIN customers c USING (customer_id)
WHERE
    product_id = 3