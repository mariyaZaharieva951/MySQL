DELIMITER $

CREATE PROCEDURE udp_increase_salaries_by_country (country_name VARCHAR(40))
DETERMINISTIC
BEGIN
    UPDATE workers w
    JOIN preserves p ON w.preserve_id = p.id
    JOIN countries_preserves cp ON cp.preserve_id = p.id
    JOIN countries c ON cp.country_id = c.id
    SET salary = salary * 1.05
    WHERE c.name = country_name;
END $

DELIMITER ;

SELECT 
	w.first_name,w.last_name,w.salary,c.name
	FROM workers w
	JOIN preserves p ON w.preserve_id = p.id
    JOIN countries_preserves cp ON cp.preserve_id = p.id
    JOIN countries c ON cp.country_id = c.id;