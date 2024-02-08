DELIMITER $

CREATE PROCEDURE udp_modify_spaceship_light_speed_rate(spaceship_name VARCHAR(50), light_speed_rate_increse INT(11))
DETERMINISTIC
BEGIN
	DECLARE ship_exists INT;
    SELECT COUNT(*) INTO ship_exists
    FROM spaceships s
    WHERE s.name = spaceship_name;
    IF ship_exists > 0 THEN 
    START TRANSACTION;
    
    UPDATE spaceships
    SET s.light_speed_rate = s.light_speed_rate + light_speed_rate_increse
    WHERE s.name = spaceship_name;
    
    IF ROW_COUNT() = 0 THEN 
    ROLLBACK;
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Spaceship you are trying to modify does not exists.';
	ELSE 
    COMMIT;
    END IF;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Космическият кораб, който се опитвате да модифицирате, не съществува.';
    END IF;
    

END $




DELIMITER ;

