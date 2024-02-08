SELECT p.name, COUNT(j.destination_spaceport_id) AS journey_count
FROM planets p
JOIN spaceports sp ON sp.planet_id = p.id
JOIN journeys j ON j.destination_spaceport_id = sp.id
GROUP BY p.name
ORDER BY journey_count DESC, p.name ASC;  