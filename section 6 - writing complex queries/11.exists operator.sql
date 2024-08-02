-- Use sql_invoicing database:
-- Select clients that have an invoice
USE sql_invoicing;

-- 1 using INNER JOIN
SELECT client_id, name, address
FROM clients
    JOIN invoices USING (client_id)
GROUP BY
    client_id;

-- 2 using IN operator
SELECT *
FROM clients
WHERE
    client_id IN (
        SELECT DISTINCT
            client_id
        FROM invoices
    );
-- 3 using ANY keyword
SELECT *
FROM clients
WHERE
    client_id = ANY (
        SELECT DISTINCT
            client_id
        FROM invoices
    );
-- using EXISTS keyword
SELECT *
FROM clients c
WHERE
    EXISTS (
        SELECT client_id
        FROM invoices
        WHERE
            client_id = c.client_id
    );