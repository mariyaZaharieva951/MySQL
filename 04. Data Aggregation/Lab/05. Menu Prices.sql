SELECT * FROM products;

SELECT category_id, ROUND(AVG(price),2) AS average_price,
 ROUND(MIN(price),2) AS 'cheapest product',
 ROUND(MAX(price),2) AS 'most expensice product'
FROM products
GROUP BY category_id;