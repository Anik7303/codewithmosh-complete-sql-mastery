USE sql_hr;

SELECT * FROM employees;

SELECT *
FROM employees e
    JOIN employees m ON e.reports_to = m.employee_id;

SELECT e.employee_id, e.first_name, e.last_name, e.job_title, e.salary, CONCAT(
        m.first_name, ' ', m.last_name
    ) AS manager
FROM employees e
    JOIN employees m ON e.reports_to = m.employee_id
ORDER BY salary DESC;

SELECT e.employee_id, e.first_name, e.last_name, e.job_title, e.salary, CONCAT(
        m.first_name, ' ', m.last_name
    ) AS manager
FROM employees e
    JOIN employees m ON e.reports_to = m.employee_id
ORDER BY salary DESC;