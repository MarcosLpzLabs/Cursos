--ordena segun el parametro establecido
SELECT * FROM users ORDER BY age;

--por defecto, ordena de forma ascendente, asi que ASC no es necesario
SELECT * FROM users ORDER BY age ASC;

SELECT * FROM users ORDER BY age DESC;

SELECT * FROM users WHERE email = "user@email.com" ORDER BY age DESC;