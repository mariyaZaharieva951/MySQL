SELECT * FROM employees;

SELECT department_id, COUNT(*) AS 'number of employees'
FROM employees
GROUP BY department_id, 'number of employees';

