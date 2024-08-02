USE sql_store;

SELECT * FROM orders;

SELECT * FROM orders WHERE order_date >= '2018-01-01';

SELECT *
FROM orders
WHERE
    order_date >= '2018-01-01'
    AND order_date <= '2018-12-31'
ORDER BY order_date ASC;