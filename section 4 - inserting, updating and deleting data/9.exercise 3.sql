USE sql_store;

SELECT * FROM customers;

UPDATE customers
SET
    points = points + 50
WHERE
    birth_date < '1990-01-01';