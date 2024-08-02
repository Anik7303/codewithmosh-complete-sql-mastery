USE sql_store;

SELECT * FROM order_items;

SELECT *
FROM order_items
WHERE
    order_id = 2
ORDER BY quantity * unit_price DESC;

SELECT
    *,
    quantity * unit_price AS total_price
FROM order_items
WHERE
    order_id = 2
ORDER BY total_price DESC;