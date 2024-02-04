SELECT * FROM peaks;


SELECT country_code,COUNT(mountain_range) AS mountain_range
FROM mountains m
JOIN mountains_countries mc ON m.id = mc.mountain_id
WHERE country_code IN ('BG','RU','US')
GROUP BY country_code
ORDER BY mountain_range DESC;