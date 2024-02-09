DELIMITER $

CREATE FUNCTION udf_offers_from_city_name (cityName VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result := (SELECT COUNT(city_id)
FROM property_offers po
JOIN properties p ON po.property_id = p.id
JOIN cities c ON p.city_id = c.id
WHERE c.name = cityName);
    RETURN result;
END $

DELIMITER ;



