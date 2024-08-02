USE sql_invoicing;

SELECT client_id, SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY
    client_id
ORDER BY client_id DESC;

SELECT client_id, SUM(invoice_total) AS total_sales
FROM invoices
WHERE
    invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
GROUP BY
    client_id
ORDER BY client_id DESC;

SELECT c.state, c.city, SUM(i.invoice_total) AS total_sales
FROM invoices i
    JOIN clients c USING (client_id)
GROUP BY
    state,
    city
ORDER BY state, city, total_sales DESC;