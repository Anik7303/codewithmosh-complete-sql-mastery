USE sql_store;

SELECT *
FROM order_items oi
    JOIN sql_inventory.products p ON oi.product_id = p.product_id;

SELECT order_id, p.product_id, p.name, oi.quantity, oi.unit_price
FROM order_items oi
    JOIN sql_inventory.products p ON oi.product_id = p.product_id
ORDER BY order_id;