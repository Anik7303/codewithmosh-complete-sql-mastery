USE sql_invoicing;

SELECT * FROM clients;

SELECT * FROM invoices;

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE
    client_id = (
        SELECT client_id
        FROM clients
        WHERE
            name = 'Myworks'
    );

UPDATE invoices
SET
    payment_date = due_date,
    payment_total = invoice_total * 0.5
WHERE
    client_id IN (
        SELECT client_id
        FROM clients
        WHERE
            state IN ('CA', 'NY')
    );