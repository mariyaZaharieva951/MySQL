SELECT name,COUNT(is_armed) AS armed_workers
FROM preserves p
JOIN workers w ON p.id = w.preserve_id
WHERE is_armed = 1
GROUP BY name
ORDER BY armed_workers DESC, p.name ASC;


