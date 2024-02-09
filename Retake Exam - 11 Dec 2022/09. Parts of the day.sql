SELECT flight_code,departure,
CASE
        WHEN HOUR(departure) >= 5 AND HOUR(departure) < 12 THEN 'Morning'
        WHEN HOUR(departure) >= 12 AND HOUR(departure) < 17 THEN 'Afternoon'
        WHEN HOUR(departure) >= 17 AND HOUR(departure) < 21 THEN 'Evening'
        ELSE 'Night'
    END AS time_of_day
FROM flights
ORDER BY flight_code DESC;