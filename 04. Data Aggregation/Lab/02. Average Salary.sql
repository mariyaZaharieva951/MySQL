SELECT * FROM employees;

SELECT department_id,ROUND(AVG(salary), 2) AS 'avarage salary'
FROM employees
GROUP BY department_id
ORDER BY department_id;



