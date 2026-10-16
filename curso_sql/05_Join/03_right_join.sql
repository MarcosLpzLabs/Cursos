-- La sentencia RIGHT JOIN (tambien conocida como RIGHT OUTER JOIN) devuelve todos los registros de la tabla de la derecha (tabla B),
-- y los registros coincidentes de la tabla de la izquierda (tabla A). 
--El resultado es NULL desde el lado izquierdo, si no hay coincidencia.
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT users.name,dni.dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT users.name,dni.dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

SELECT users.name, languages.name
FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;

