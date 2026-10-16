-- La sentencia FULL JOIN (tambien conocida como FULL OUTER JOIN) devuelve todos los registros 
--cuando hay una coincidencia en cualquiera de las tablas.
-- Es decir, devuelve todos los registros de la tabla A y todos los registros de la tabla B, 
--y rellena con NULLs en los lugares donde no hay coincidencias.


-- Este comando no es soportado por MySQL, pero si por otros motores de bases de datos
-- como PostgreSQL, SQL Server y Oracle.

--En MySQL tenemos el comando UNION para simular un FULL JOIN, combinando un LEFT JOIN y un RIGHT JOIN.