SELECT * from employees;

SELECT AVG(salary) AS min_average_salary
from employees
GROUP BY department_id
ORDER BY min_average_salary
LIMIT 1;