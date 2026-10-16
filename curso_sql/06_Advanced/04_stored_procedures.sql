-- un Stored Procedure es un conjunto de instrucciones SQL que se almacenan en la base de datos 
--y se pueden ejecutar de manera repetida. 
--Los procedimientos almacenados permiten encapsular lógica de negocio, 
--mejorar el rendimiento y facilitar el mantenimiento del código SQL.


DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

CALL p_all_users();

--También se pueden crear procedimientos almacenados con parámetros de entrada y salida,
--lo que permite personalizar su comportamiento según las necesidades del usuario.

DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

CALL p_age_users(20);

DROP PROCEDURE p_age_users;