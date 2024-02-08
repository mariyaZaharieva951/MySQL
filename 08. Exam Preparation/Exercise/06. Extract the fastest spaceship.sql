SELECT * FROM spaceships;

SELECT s.name AS spaceship,sp.name AS spaceport
FROM spaceships s
JOIN journeys j ON s.id = j.spaceship_id
JOIN spaceports sp ON j.destination_spaceport_id = sp.id
ORDER BY s.light_speed_rate DESC
LIMIT 1;