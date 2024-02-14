DELIMITER $

CREATE FUNCTION udf_average_salary_by_position_name (name VARCHAR(40))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE result DECIMAL(10, 2);
    SET result := (SELECT ROUND(AVG(salary),2) AS position_average_salary 
		FROM workers w
		JOIN positions p ON w.position_id = p.id
		WHERE p.name = name);
    RETURN result;
END $

DELIMITER ;

