USE sql_invoicing;

-- HAVING is the same as WHERE
-- but can be used after GROUP BY; WHERE cannot be used with GROUP BY
-- columns used for conditions in HAVING have to be present in the SELECT section

SELECT * FROM invoices;

SELECT client_id, SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY
    client_id
HAVING
    total_sales > 500;

SELECT
    client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS num_of_payments
FROM invoices
GROUP BY
    client_id
HAVING
    total_sales > 500;

SELECT
    client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS num_of_invoices
FROM invoices
GROUP BY
    client_id
HAVING
    total_sales > 500
    AND num_of_invoices > 5;