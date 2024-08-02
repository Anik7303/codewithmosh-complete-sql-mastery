-- In sql_hr database:
-- Find employees who earn more than average
USE sql_hr;

SELECT *
FROM employees
WHERE
    salary > (
        SELECT AVG(salary)
        FROM employees
    );