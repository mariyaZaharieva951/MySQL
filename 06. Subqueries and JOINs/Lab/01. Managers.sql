SELECT * FROM departments;

SELECT employee_id, CONCAT(first_name,' ',last_name) AS 'full_name',e.department_id, d.name
FROM employees AS e
JOIN departments AS d ON e.employee_id = d.manager_id
ORDER BY e.employee_id
LIMIT 5;


