SELECT * FROM departments;

SELECT first_name,last_name,hire_date,d.name AS department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE hire_date > '1999-01-01'
AND d.name IN ('Sales','Finance')
ORDER BY hire_date;


