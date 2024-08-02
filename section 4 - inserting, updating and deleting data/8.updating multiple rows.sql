USE sql_invoicing;

SELECT * FROM invoices ORDER BY client_id ASC;

UPDATE invoices
SET
    payment_date = due_date,
    payment_total = invoice_total * 0.6
WHERE
    client_id = 3;

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE
    client_id IN (3, 5);