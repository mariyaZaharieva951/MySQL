DELIMITER $

CREATE FUNCTION udf_count_flights_from_country(country VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result := (SELECT COUNT(departure_country)
	FROM flights f
	JOIN countries c ON f.departure_country = c.id
    WHERE c.name = country
	GROUP BY c.name);
    RETURN result;
END $

DELIMITER ;

