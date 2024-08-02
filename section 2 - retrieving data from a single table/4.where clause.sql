USE sql_store;

SELECT * FROM customers;

-- Comparision Operators
-- >
-- >=
-- <
-- <=
-- =
-- !=
-- <>

SELECT * FROM customers WHERE points > 3000;

SELECT *
FROM customers
    -- WHERE state = 'VA';
    -- WHERE state = 'va';
    -- WHERE state != 'VA';
WHERE
    state <> 'VA';

SELECT * FROM customers WHERE birth_date > '1990-01-01';