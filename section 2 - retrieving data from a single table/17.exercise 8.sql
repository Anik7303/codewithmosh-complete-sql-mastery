USE sql_store;

SELECT * FROM orders;

SELECT * FROM orders WHERE shipped_date IS NULL;

SELECT *
FROM orders
WHERE
    shipped_date IS NULL
    OR shipper_id IS NULL;