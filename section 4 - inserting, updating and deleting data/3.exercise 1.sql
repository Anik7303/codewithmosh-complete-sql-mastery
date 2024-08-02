USE sql_store;

SELECT * FROM products;

INSERT INTO
    products (
        name,
        unit_price,
        quantity_in_stock
    )
VALUES ('product 5', 2.49, 5),
    ('product 6', 1.25, 3),
    ('product 7', 3.99, 5);