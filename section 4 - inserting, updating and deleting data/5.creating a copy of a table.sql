USE sql_store;

CREATE TABLE orders_archived AS SELECT * FROM orders;

INSERT INTO
    orders_archived
SELECT *
FROM orders
WHERE
    order_date <= '2019-01-01';