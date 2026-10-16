-- ALIAS sirve para renombrar columnas o tablas en una consulta SQL
SELECT name, init_date AS 'Fecha de inicio del curso' FROM users WHERE age BETWEEN 20 AND 30;

-- Hay un caso dentro del ALIAS que permite concatenar cadenas, atributos, columnas...
SELECT CONCAT('Nombre: ',name,', Apellido: ',surname) FROM users;

--Lo normal es usarlo así:
SELECT CONCAT('Nombre: ',name,'Apellido: ',surname) AS "Nombre completo: " FROM users;