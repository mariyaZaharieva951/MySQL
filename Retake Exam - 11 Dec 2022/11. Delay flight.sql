DELIMITER $

CREATE PROCEDURE udp_delay_flight(code VARCHAR(50))
DETERMINISTIC
BEGIN
    UPDATE flights f
    SET f.has_delay = true, f.departure = DATE_ADD(departure, INTERVAL 30 MINUTE);
END $

DELIMITER ;

