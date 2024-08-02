-- use sql_hr database:
-- Select employees whose salary is above the average in their office
USE sql_hr;

SELECT *
FROM employees e
WHERE
    salary > (
        SELECT AVG(salary)
        FROM employees
        WHERE
            office_id = e.office_id
    )