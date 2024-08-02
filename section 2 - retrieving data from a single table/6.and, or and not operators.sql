USE sql_store;

SELECT *
FROM customers
WHERE
    birth_date >= '1990-01-01'
    AND points > 1000;

SELECT *
FROM customers
WHERE
    birth_date >= '1990-01-01'
    OR points > 1000;

SELECT *
FROM customers
WHERE
    birth_date >= '1970-01-01'
    OR
    -- points > 1000 AND state = 'VA'
    (
        points > 1000
        AND state = 'VA'
    );

SELECT *
FROM customers
WHERE
    NOT(
        birth_date > '1990-01-01'
        OR points > 1000
    );