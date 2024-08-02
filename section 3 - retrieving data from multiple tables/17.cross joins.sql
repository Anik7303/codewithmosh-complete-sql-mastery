USE sql_store;

-- explicit syntax
SELECT c.first_name AS customer, p.name AS product
FROM customers c
    CROSS JOIN products p
ORDER BY customer, product;

-- implicit syntax
SELECT c.first_name AS customer, p.name AS product
FROM customers c, products p
ORDER BY customer, product;