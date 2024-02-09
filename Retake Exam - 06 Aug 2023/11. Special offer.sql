DELIMITER $

CREATE PROCEDURE udp_special_offer (first_name VARCHAR(50))
DETERMINISTIC
BEGIN
    UPDATE property_offers po
    JOIN agents a ON a.id = po.agent_id
    SET po.price = ROUND((po.price * 0.9), 2)
    WHERE a.first_name = first_name;
END $

DELIMITER ;

SELECT 
	(ROUND((price * 0.9),2)) AS `price(after)`
	FROM agents a
	JOIN property_offers po ON a.id = po.agent_id
    WHERE a.first_name = 'Hans';
