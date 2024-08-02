USE sql_store;

SELECT last_name, first_name FROM customers;

SELECT last_name, first_name, points + 10 FROM customers;

SELECT
    first_name,
    last_name,
    points,
    points + 10 * 100 AS discount_factor
FROM customers;

SELECT
    first_name,
    last_name,
    points,
    (points + 10) * 100 AS "discount factor"
FROM customers;

SELECT state FROM customers;

SELECT DISTINCT state FROM customers;