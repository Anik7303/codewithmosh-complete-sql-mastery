USE sql_store;

-- implicit syntax
SELECT p.name AS product, sh.name AS shipper
FROM products p, shippers sh;

-- explicit syntax
SELECT p.name AS product, sh.name AS shipper
FROM products p
    CROSS JOIN shippers sh;

-- example solution
SELECT p.name AS product, sh.name AS shipper
FROM shippers sh
    CROSS JOIN products p
ORDER BY sh.name;