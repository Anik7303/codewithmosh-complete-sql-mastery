-- Find clients without invoices
USE sql_invoicing;

-- using subqueries
SELECT *
FROM clients
WHERE
    client_id NOT IN(
        SELECT DISTINCT
            client_id
        FROM invoices
    )
-- using join
SELECT *
FROM clients
    LEFT JOIN invoices USING (client_id)
WHERE
    invoice_id IS NULL;