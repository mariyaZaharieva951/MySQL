SELECT * FROM peaks;


SELECT c.country_code,m.mountain_range,peak_name,elevation
FROM countries c
JOIN mountains_countries mc ON c.country_code = mc.country_code
JOIN mountains m ON m.id = mc.mountain_id
JOIN peaks p ON m.id = p.mountain_id
WHERE c.country_code = 'BG' AND p.elevation > 2835
ORDER BY p.elevation DESC;