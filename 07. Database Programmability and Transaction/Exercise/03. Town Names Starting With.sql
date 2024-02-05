DELIMITER $

CREATE PROCEDURE usp_get_towns_starting_with(string VARCHAR(10))
BEGIN
	SELECT t.name
    FROM towns t
    WHERE t.name LIKE concat(string,'%')
    ORDER BY t.name;
END $

DELIMITER ;

CALL usp_get_towns_starting_with('b');

