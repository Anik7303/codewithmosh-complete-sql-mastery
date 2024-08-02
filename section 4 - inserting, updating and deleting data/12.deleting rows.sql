USE sql_invoicing;

SELECT * FROM invoices;

DELETE FROM invoices WHERE invoice_id = 1;

DELETE FROM invoices
WHERE
    client_id = (
        SELECT client_id
        FROM clients
        WHERE
            name = 'Myworks'
    )