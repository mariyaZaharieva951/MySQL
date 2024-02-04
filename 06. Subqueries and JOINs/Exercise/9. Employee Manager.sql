SELECT * FROM employees;

SELECT e.employee_id,e.first_name,e.manager_id,p.first_name
FROM employees e
JOIN employees p ON e.manager_id = p.employee_id
WHERE e.manager_id IN (3,7)
ORDER BY e.first_name;