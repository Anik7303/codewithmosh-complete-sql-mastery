USE sql_invoicing;

SELECT * FROM payments ORDER BY date;

SELECT
    p.date,
    pm.name AS payment_method,
    SUM(p.amount) AS total_payments
FROM
    payments p
    JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
GROUP BY
    p.date,
    pm.name
ORDER BY p.date;

-- provided solution (step by step)
SELECT date, SUM(amount) AS total_payments
FROM payments
GROUP BY
    date
ORDER BY date;

SELECT
    date,
    pm.name AS payment_method,
    SUM(amount) AS total_payments
FROM
    payments p
    JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
GROUP BY
    date,
    payment_method
ORDER BY date;