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

DELIMITER ;

SELECT ufn_get_salary_level(13500);