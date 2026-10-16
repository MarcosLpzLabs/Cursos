--La sentencia LEFT JOIN (tambien conocida como LEFT OUTER JOIN) devuelve todos los registros de la tabla de la izquierda (tabla A),
-- y los registros coincidentes de la tabla de la derecha (tabla B). 
--El resultado es NULL desde el lado derecho, si no hay coincidencia.
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

SELECT users.name,dni.dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

SELECT users.name,dni.dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;

SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;
