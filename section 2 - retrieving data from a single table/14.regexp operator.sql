USE sql_store;

SELECT * FROM customers;

-- ^ beginning
-- $ end
-- | logical or
-- [abcd]
-- [a-d]

SELECT *
FROM customers
    -- WHERE last_name LIKE '%field%'
WHERE
    last_name REGEXP 'field';

SELECT *
FROM customers
    -- WHERE last_name REGEXP '^field'
WHERE
    last_name REGEXP 'field$';

SELECT *
FROM customers
    -- WHERE last_name REGEXP 'field|mac'
WHERE
    last_name REGEXP 'field|mac|rose';

SELECT *
FROM customers
    -- WHERE last_name REGEXP '^field|mac|rose'
WHERE
    last_name REGEXP 'field$|mac|rose';

SELECT *
FROM customers
    -- WHERE last_name REGEXP '[gim]e'
WHERE
    last_name REGEXP 'e[fmg]';

SELECT *
FROM customers
    -- WHERE last_name REGEXP '[a-h]e'
WHERE
    last_name NOT REGEXP '[a-h]e';