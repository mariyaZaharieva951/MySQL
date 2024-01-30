
CREATE TABLE new_employees AS
SELECT *
FROM employees
WHERE salary > 30000
ORDER BY department_id;

DELETE FROM new_employees
WHERE manager_id = 42;

UPDATE new_employees
SET salary = salary + 5000
WHERE department_id = 1;

SELECT department_id,AVG(salary)
FROM new_employees
GROUP BY department_id
ORDER BY department_id;

SET SQL_SAFE_UPDATES = 0;