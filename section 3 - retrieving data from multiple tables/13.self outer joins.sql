USE sql_hr;

SELECT * FROM employees;

SELECT e.employee_id AS id, CONCAT(
        e.first_name, ' ', e.last_name
    ) AS name, e.job_title, m.first_name AS reports_to
FROM employees e
    LEFT JOIN employees m ON e.reports_to = m.employee_id
ORDER BY reports_to ASC;