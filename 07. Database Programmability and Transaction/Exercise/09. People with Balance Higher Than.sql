SELECT * FROM accounts;


DELIMITER $

CREATE PROCEDURE usp_get_holders_with_balance_higher_than(num DECIMAL(10,4))
BEGIN
		SELECT ah.first_name,ah.last_name
        FROM account_holders ah
        JOIN accounts a ON a.account_holder_id = ah.id
        WHERE num < (SELECT SUM(balance) 
        FROM accounts
        WHERE a.account_holder_id = ah.id
        GROUP BY a.account_holder_id
        )
        GROUP BY ah.id
        ORDER BY ah.id;
END $

DELIMITER ;

CALL usp_get_holders_with_balance_higher_than(7000); 
DROP PROCEDURE usp_get_holders_with_balance_higher_than;