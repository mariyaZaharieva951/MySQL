SELECT name AS games,
CASE 
	WHEN EXTRACT(HOUR FROM start) >= 0 AND HOUR(start) < 12 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM start) < 18 THEN 'Afternoon'
    WHEN EXTRACT(HOUR FROM start) < 24 THEN 'Evening'
	END AS 'Part of Day',
CASE 
	WHEN duration < 4 THEN 'Extra Short'
    WHEN duration < 7 THEN 'Short'
    WHEN duration< 11 THEN 'Long'
    ELSE 'Extra Long'
	END AS 'Duration'
    
FROM games;

SELECT * FROM games;