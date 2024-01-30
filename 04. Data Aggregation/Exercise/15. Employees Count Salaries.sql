SELECT * FROM employees;

SELECT COUNT(salary)
FROM employees
WHERE manager_id IS NULL;