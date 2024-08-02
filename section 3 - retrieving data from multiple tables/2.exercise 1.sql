USE sql_store;

SELECT * FROM order_items;

SELECT * FROM products;

-- solution

SELECT oi.order_id, oi.product_id, p.name, oi.quantity, oi.unit_price
FROM order_items oi
    JOIN products p ON p.product_id = oi.product_id;