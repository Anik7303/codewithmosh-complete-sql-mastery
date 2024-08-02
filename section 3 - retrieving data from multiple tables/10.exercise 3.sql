USE sql_store;

SELECT * FROM products;

SELECT * FROM order_items;

SELECT p.product_id, p.name, oi.quantity
FROM products p
    LEFT JOIN order_items oi ON p.product_id = oi.product_id;