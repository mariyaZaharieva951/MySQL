SELECT CONCAT(first_name, ' ',last_name) AS 'full name',
DATEDIFF(died,born) AS 'days lived'
FROM authors;

SELECT *
FROM authors;