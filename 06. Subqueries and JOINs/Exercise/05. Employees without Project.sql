SELECT * FROM employees_projects;

SELECT e.employee_id,first_name
FROM employees e
LEFT JOIN employees_projects ep ON e.employee_id = ep.employee_id
LEFT JOIN projects p ON ep.project_id = p.project_id
WHERE p.project_id IS NULL
ORDER BY e.employee_id DESC
LIMIT 3;