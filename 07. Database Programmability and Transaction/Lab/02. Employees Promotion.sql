
DELIMITER $

CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(50))
BEGIN
		UPDATE employees
        SET salary = salary * 1.05;
END $

DELIMITER ;

CALL usp_raise_salaries('Finance');

SELECT first_name,salary 
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.name = 'Finance'
ORDER BY first_name,salary;