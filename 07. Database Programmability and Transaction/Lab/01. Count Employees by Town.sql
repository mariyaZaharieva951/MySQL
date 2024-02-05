

DELIMITER $

CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE count INT;
	SET count := (SELECT COUNT(employee_id) 
    FROM employees e
    JOIN addresses a ON a.address_id  = e.address_id
    JOIN towns t ON t.town_id = a.town_id
    WHERE t.name = (town_name));
    RETURN count;
END $



DELIMITER ;
SELECT ufn_count_employees_by_town('Sofia') AS count;
SELECT * FROM towns;