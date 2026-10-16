-- Una view es una tabla virtual que se basa en el resultado de una consulta SQL. 
--Las vistas permiten simplificar consultas complejas, mejorar la seguridad al restringir 
--el acceso a ciertos datos y proporcionar una capa de abstracción sobre las tablas subyacentes.
CREATE VIEW v_adult_users AS
SELECT name,age
FROM users
WHERE age >= 18;

SELECT * FROM v_adult_users;

--Cuando se actualiza la tabla subyacente, la vista reflejará automáticamente los cambios, ya que no almacena datos por sí misma,
--sino que genera resultados dinámicamente a partir de la consulta definida.

--Para eliminar una vista
DROP VIEW v_adult_users;