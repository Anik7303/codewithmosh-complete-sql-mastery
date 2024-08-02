USE sql_invoicing;

SELECT * FROM invoices;

UPDATE invoices
SET
    payment_total = 10,
    payment_date = '2019-03-01'
WHERE
    invoice_id = 1;

UPDATE invoices
SET
    payment_total = 0,
    payment_date = NULL -- payment_total = DEFAULT, payment_date = NULL
WHERE
    invoice_id = 1;

UPDATE invoices
SET
    payment_date = due_date,
    payment_total = invoice_total * 0.6
WHERE
    invoice_id = 3;