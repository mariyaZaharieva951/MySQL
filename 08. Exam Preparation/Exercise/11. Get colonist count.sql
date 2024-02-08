DELIMITER $

CREATE FUNCTION _count_colonists_by_destination_planet (planet_name VARCHAR (30))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result := (SELECT COUNT(c.first_name) AS count
    FROM colonists c
    JOIN travel_cards tc ON c.id = tc.colonist_id
    JOIN journeys j ON tc.journey_id = j.id
    JOIN planets p ON j.destination_spaceport_id = p.id
    WHERE p.name = planet_name
    GROUP BY p.name
    );
    RETURN result;
END $

DELIMITER ;


SELECT COUNT(tc.colonist_id)
    FROM travel_cards tc
    JOIN journeys j ON tc.journey_id = j.id;
    -- JOIN planets p ON j.destination_spaceport_id = p.id
