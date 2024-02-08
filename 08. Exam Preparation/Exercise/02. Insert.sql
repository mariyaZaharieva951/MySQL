INSERT INTO travel_cards (card_number,job_during_journey,colonist_id,journey_id)
	SELECT
    IF(birth_date > '1980-01-01',CONCAT(YEAR(birth_date),DAY(birth_date),SUBSTRING(ucn,1,4)),CONCAT(YEAR(birth_date),MONTH(birth_date),RIGHT(ucn,4))),
    CASE
		WHEN c.id % 2 = 0  THEN 'pilot'
        WHEN c.id % 3 = 0  THEN 'cook'
        ELSE 'engineer'
    END,
    c.id,
    SUBSTRING(ucn,1,1)
    
FROM colonists c
WHERE c.id BETWEEN 96 AND 100;