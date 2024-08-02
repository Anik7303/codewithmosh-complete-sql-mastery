USE sql_invoicing;

SELECT * FROM payments;

SELECT * FROM clients;

SELECT * FROM payment_methods;

--

SELECT p.payment_id, c.name, c.address, p.date, p.amount, p.invoice_id, pm.name AS payment_method
FROM
    payments p
    JOIN clients c ON p.client_id = c.client_id
    JOIN payment_methods pm ON pm.payment_method_id = p.payment_method;