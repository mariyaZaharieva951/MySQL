SELECT CONCAT(UPPER(SUBSTRING(last_name,1,2)),country_id) AS flight_code, CONCAT(first_name,' ',last_name) AS full_name,country_id
FROM passengers p
WHERE id NOT IN (
    SELECT passenger_id
    FROM flights_passengers
)
ORDER BY country_id ASC;