SELECT * FROM spaceships;

SELECT s.name,s.manufacturer
FROM spaceships s
JOIN journeys j ON s.id = j.spaceship_id
JOIN travel_cards tc ON tc.journey_id = j.id
join colonists c ON tc.colonist_id = c.id
WHERE c.birth_date > '1989-01-01'
GROUP BY s.name
ORDER BY s.name;