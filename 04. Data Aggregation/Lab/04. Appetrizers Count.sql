SELECT * FROM products;


SELECT COUNT(name) AS appetizers
FROM products
WHERE price > 8 AND category_id = 2;