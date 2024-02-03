SELECT * FROM employees;

SELECT employee_id,job_title,e.address_id,a.address_text
FROM employees e
JOIN addresses a ON e.address_id  = a.address_id
GROUP BY employee_id
ORDER BY e.address_id ASC
LIMIT 5;