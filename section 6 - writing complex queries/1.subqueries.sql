-- In sql_store database:
-- Find products that are more expensive than lettuce (id = 3)
USE sql_store;

SELECT *
FROM products
WHERE
    unit_price > (
        SELECT unit_price
        FROM products
        WHERE
            product_id = 3
    );