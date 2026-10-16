--INNER JOIN sirve para obtener los registros que tienen coincidencias en ambas tablas.
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;
--devuelve las coincidencias entre ambas tablas, es decir, los registros que tienen un user_id en común.

-- en la gran mayoria de motores de bases de datos es lo mismo poner INNER JOIN o simplemente JOIN, 
--ya que por defecto se asume que es un INNER JOIN.


SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

SELECT name,dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

SELECT * FROM companies
JOIN users
ON companies.company_id = users.company_id;

--Para relaciones N:M hay que hacer dos JOIN :
SELECT * FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

SELECT users.name, languages.name
FROM users_languages
JOIN users ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;