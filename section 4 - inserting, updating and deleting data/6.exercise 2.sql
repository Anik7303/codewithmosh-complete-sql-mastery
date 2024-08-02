USE sql_invoicing;

SELECT * FROM invoices;

SELECT * FROM clients;

CREATE TABLE invoices_archived AS
SELECT i.invoice_id, i.number, c.name AS client, i.payment_total, i.invoice_date, i.due_date, i.payment_date
FROM invoices i
    JOIN clients c USING (client_id)
WHERE
    i.payment_date IS NOT NULL;

SELECT * FROM invoices_archived;