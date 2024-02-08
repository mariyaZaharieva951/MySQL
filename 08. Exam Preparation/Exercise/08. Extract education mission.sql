SELECT p.name AS planet_name,sp.name AS spaceport_name
FROM planets p
JOIN spaceports sp ON sp.planet_id = p.id
JOIN journeys j ON j.destination_spaceport_id = sp.id
WHERE j.purpose = 'Educational'
ORDER BY sp.name DESC;
