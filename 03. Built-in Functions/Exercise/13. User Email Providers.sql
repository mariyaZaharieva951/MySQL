SELECT user_name,SUBSTRING(email, LOCATE('@', email) + LENGTH('@')) AS provider_email
FROM users
ORDER BY provider_email ASC, user_name;

SELECT * FROM users;