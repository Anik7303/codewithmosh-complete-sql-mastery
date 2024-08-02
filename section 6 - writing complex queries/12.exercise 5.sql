-- Use sql_store database:
-- Find the products that have never been ordered
USE sql_store;

SELECT *
FROM products p
WHERE
    NOT EXISTS (
        SELECT product_id
        FROM order_items
        WHERE
            product_id = p.product_id
    )