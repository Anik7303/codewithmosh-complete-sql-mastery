USE sql_store;

SELECT * FROM order_items;

SELECT
    order_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price AS total_price
FROM order_items
ORDER BY total_price DESC;

SELECT *
FROM order_items
WHERE
    order_id = 6
    AND quantity * unit_price > 30;

SELECT
    *,
    unit_price * quantity AS total_price
FROM order_items
WHERE
    order_id = 6
    AND quantity * unit_price > 30;