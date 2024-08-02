USE sql_invoicing;

-- Aggregate Functions: (they work with only non-null values)
-- MAX
-- MIN
-- SUM
-- AVG
-- COUNT

SELECT
    MAX(invoice_total) AS maximum,
    MIN(invoice_total) AS minimum,
    SUM(invoice_total) AS total,
    AVG(invoice_total) AS average,
    COUNT(invoice_total) AS num_of_invoices,
    MAX(invoice_date) AS latest_invoice_date,
    MIN(invoice_date) AS first_invoice_date,
    COUNT(payment_date) AS count_of_payments,
    SUM(invoice_total * 1.1) AS updated_total
FROM invoices;

SELECT
    MAX(invoice_total) AS maximum,
    MIN(invoice_total) AS minimum,
    SUM(invoice_total) AS total,
    AVG(invoice_total) AS average,
    COUNT(invoice_total) AS num_of_invoices
FROM invoices
WHERE
    invoice_date > '2019-07-01';

SELECT
    MAX(invoice_total) AS maximum,
    MIN(invoice_total) AS minimum,
    SUM(invoice_total) AS total,
    AVG(invoice_total) AS average,
    COUNT(invoice_total) AS num_of_invoices,
    COUNT(DISTINCT client_id) AS clients
FROM invoices
WHERE
    invoice_date > '2019-07-01';