SELECT * FROM addresses;
SELECT * FROM towns;


SELECT t.town_id,name, address_text 
FROM towns AS t
JOIN addresses AS a ON t.town_id = a.town_id
WHERE name IN('San Francisco', 'Sofia','Carnation')
ORDER BY town_id,address_id;