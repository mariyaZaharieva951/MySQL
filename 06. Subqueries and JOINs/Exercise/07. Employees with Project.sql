SELECT * FROM projects;

SELECT e.employee_id,first_name,p.name AS project_name
FROM employees e
JOIN employees_projects ep ON e.employee_id = ep.employee_id
JOIN projects p ON ep.project_id = p.project_id
WHERE DATE(p.start_date) > 2002-08-13 AND p.end_date IS NULL
ORDER BY first_name ASC,project_name ASC
LIMIT 5;