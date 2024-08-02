USE sql_store;

SELECT *
FROM customers
    -- ORDER BY first_name
ORDER BY first_name ASC;

SELECT * FROM customers ORDER BY first_name DESC;

SELECT * FROM customers ORDER BY state DESC, first_name DESC;

SELECT first_name, last_name FROM customers ORDER BY birth_date;

SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points, last_name DESC;

-- avoid this approach
SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY 2, 1;
-- last_name, first_name