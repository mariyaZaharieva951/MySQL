SELECT * FROM projects;

SELECT e.employee_id,first_name,
IF(p.start_date >= '2005-01-01',NULL,p.name) AS project_name 
FROM employees e
JOIN employees_projects ep ON e.employee_id = ep.employee_id
JOIN projects p ON ep.project_id = p.project_id
WHERE e.employee_id = 24
ORDER BY project_name;


