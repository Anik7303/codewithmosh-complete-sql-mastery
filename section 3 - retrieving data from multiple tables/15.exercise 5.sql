USE sql_invoicing;

SELECT p.date, c.name, c.address, p.amount, pm.name
FROM
    payments p
    JOIN clients c USING (client_id)
    LEFT JOIN payment_methods pm ON pm.payment_method_id = p.payment_method;