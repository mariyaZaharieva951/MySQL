DELIMITER $

CREATE FUNCTION ufn_calculate_future_value(sum DECIMAL(19,4),yearly_interest_rate DOUBLE,number_of_years INT)
RETURNS DECIMAL(19,4)
DETERMINISTIC
BEGIN
RETURN sum * POW(1 + yearly_interest_rate, number_of_years);
END $

CREATE PROCEDURE usp_calculate_future_value_for_account(id INT, interest DECIMAL(10,4))
BEGIN
	SELECT a.id as account_id,first_name,last_name,a.balance, ufn_calculate_future_value(a.balance,interest,5) AS balance_in_5_years
	FROM account_holders ah
    JOIN accounts a ON a.account_holder_id = ah.id
    WHERE a.id = id;
END $


DELIMITER ;

CALL usp_calculate_future_value_for_account(1,0.1);