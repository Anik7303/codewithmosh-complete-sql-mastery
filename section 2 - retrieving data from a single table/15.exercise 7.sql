USE sql_store;

-- 1
SELECT *
FROM customers
    -- WHERE first_name REGEXP '^elka$|^ambur$';
WHERE
    first_name REGEXP '^ELKA$|^AMBUR$';

-- 2
SELECT *
FROM customers
    -- WHERE last_name REGEXP 'et$|on$';
WHERE
    last_name REGEXP 'EY$|ON$';

-- 3
SELECT *
FROM customers
    -- WHERE last_name REGEXP '^my|se'
WHERE
    last_name REGEXP '^MY|SE';

-- 4
SELECT *
FROM customers
    -- WHERE last_name REGEXP 'B[RU]'
WHERE
    last_name REGEXP 'b[ru]';
-- WHERE last_name REGEXP 'BR|BU';