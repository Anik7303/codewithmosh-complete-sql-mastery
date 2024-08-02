-- [sql_store] Find products that are more expensive thn Lettuce (id = 3)

USE sql_store;

SELECT *
FROM products
WHERE
    unit_price > (
        SELECT unit_price
        FROM products
        WHERE
            product_id = 3
    );

-- [sql_hr] Find employees who earn more than average
USE sql_hr;

SELECT *
FROM employees
WHERE
    salary > (
        SELECT AVG(salary)
        FROM employees
    );

-- [sql_store] Find the products that have never been ordered
USE sql_store;

SELECT *
FROM products
WHERE
    product_id NOT IN(
        SELECT DISTINCT
            product_id
        FROM order_items
    );

-- [sql_invoicing] Find clients without invoices
USE sql_invoicing;

-- using subqueries
SELECT *
FROM clients
WHERE
    client_id NOT IN(
        SELECT DISTINCT
            client_id
        FROM invoices
    );

-- using JOIN
SELECT
    client_id,
    name,
    address,
    city,
    state,
    phone
FROM clients
    LEFT JOIN invoices USING (client_id)
WHERE
    invoice_id IS NULL;

-- [sql_store] Find customers who have ordered lettuce (id = 3)
-- Select customer_id, first_name, last_name
USE sql_store;

-- using subqueries
SELECT
    customer_id,
    first_name,
    last_name
FROM customers
WHERE
    customer_id IN (
        SELECT DISTINCT
            customer_id
        FROM order_items
            JOIN orders USING (order_id)
        WHERE
            product_id = 3
    );

-- using JOIN
-- 1
SELECT DISTINCT
    customer_id,
    first_name,
    last_name
FROM
    customers
    JOIN orders USING (customer_id)
    JOIN order_items USING (order_id)
WHERE
    product_id = 3;

-- 2
SELECT
    customer_id,
    first_name,
    last_name
FROM
    customers
    JOIN orders USING (customer_id)
    JOIN order_items USING (order_id)
WHERE
    product_id = 3
GROUP BY
    customer_id,
    first_name,
    last_name;

-- [sql_invoicing] Select invoices larger than all invoices of client 3
USE sql_invoicing;

-- using subqueries
SELECT *
FROM invoices
WHERE
    invoice_total > (
        SELECT MAX(invoice_total)
        FROM invoices
        WHERE
            client_id = 3
    );

-- using ALL keyword
SELECT *
FROM invoices
WHERE
    invoice_total > ALL (
        SELECT invoice_total
        FROM invoices
        WHERE
            client_id = 3
    );

-- using ANY keyword
SELECT *
FROM invoices
WHERE
    invoice_total > ANY (
        SELECT invoice_total
        FROM invoices
        WHERE
            client_id = 3
    );

-- using SOME keyword
SELECT *
FROM invoices
WHERE
    invoice_total > SOME (
        SELECT invoice_total
        FROM invoices
        WHERE
            client_id = 3
    );

-- [sql_invoicing] Select clients with at least two invoices
USE sql_invoicing;

-- using subqueries
SELECT *
FROM clients
WHERE
    client_id IN (
        SELECT client_id
        FROM invoices
        GROUP BY
            client_id
        HAVING
            COUNT(*) >= 2
    );

-- using ANY keyword
SELECT *
FROM clients
WHERE
    client_id = ANY (
        SELECT client_id
        FROM invoices
        GROUP BY
            client_id
        HAVING
            COUNT(*) >= 2
    );
-- [sql_hr] Select employees whose salary is above the average in their office
USE sql_hr;

SELECT *
FROM employees e
WHERE
    salary > (
        SELECT AVG(salary)
        FROM employees
        wHERE
            office_id = e.office_id
    );

-- [sql_invoicing] Get invoices that are larger than
-- the client's average invoice amount
USE sql_invoicing;

SELECT *
FROM invoices i
WHERE
    invoice_total > (
        SELECT AVG(invoice_total)
        FROM invoices
        WHERE
            client_id = i.client_id
    );

-- [sql_invoicing] Select clients that have an invoice
USE sql_invoicing;

-- 1 - using IN operator
SELECT *
FROM clients
WHERE
    client_id IN (
        SELECT DISTINCT
            client_id
        FROM invoices
    );

-- 2 - using ANY keyword
SELECT *
FROM clients
WHERE
    client_id = ANY (
        SELECT DISTINCT
            client_id
        FROM invoices
    );

-- 3 - using INNER JOIN
SELECT DISTINCT
    client_id,
    name,
    address,
    city,
    state,
    phone
FROM clients
    JOIN invoices USING (client_id);

-- 4 - using EXISTS
SELECT *
FROM clients c
WHERE
    EXISTS (
        SELECT client_id
        FROM invoices
        WHERE
            client_id = c.client_id
    );

-- [sql_store] Find the products that have never been ordered
USE sql_store;

SELECT *
FROM products p
WHERE
    NOT EXISTS (
        SELECT product_id
        FROM order_items
        WHERE
            product_id = p.product_id
    );

-- [sql_invoicing]
USE sql_invoicing;

SELECT
    invoice_id,
    invoice_total,
    (
        SELECT AVG(invoice_total)
        FROM invoices
    ) AS invoice_average,
    invoice_total - (
        SELECT invoice_average
    ) AS difference
FROM invoices;

-- [sql_invoicing]
USE sql_invoicing;

SELECT
    c.client_id,
    c.name,
    (
        SELECT SUM(invoice_total)
        FROM invoices
        WHERE
            client_id = c.client_id
    ) AS total_sales,
    (
        SELECT AVG(invoice_total)
        FROM invoices
    ) AS average,
    (
        SELECT total_sales - average
    ) AS difference
FROM clients c;

-- [sql_invoicing]
USE sql_invoicing;

SELECT *
FROM (
        SELECT
            c.client_id, c.name, (
                SELECT SUM(invoice_total)
                FROM invoices
                WHERE
                    client_id = c.client_id
            ) AS total_sales, (
                SELECT AVG(invoice_total)
                FROM invoices
            ) AS average, (
                SELECT total_sales - average
            ) AS difference
        FROM clients c
    ) sales_summary
WHERE
    total_sales IS NOT NULL;