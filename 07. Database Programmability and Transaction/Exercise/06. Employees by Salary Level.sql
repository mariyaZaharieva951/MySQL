DELIMITER $

CREATE FUNCTION ufn_get_salary_level(salary DECIMAL(10,4))
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
DECLARE result VARCHAR(30);
    CASE
		WHEN salary < 30000 THEN SET result := 'Low';
        WHEN salary <= 50000 THEN SET result := 'Average';
        WHEN salary > 50000 THEN SET result := 'High';
    END CASE;
    RETURN result;
END $

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(30))
BEGIN
		SELECT first_name,last_name
        FROM employees
        WHERE salary_level =  ufn_get_salary_level(salary)
		ORDER BY first_name DESC, last_name DESC;
END $

DELIMITER ;
CALL usp_get_employees_by_salary_level('High');
SELECT ufn_get_salary_level(13500);