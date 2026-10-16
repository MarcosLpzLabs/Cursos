-- el comando having se utiliza para filtrar los resultados de una consulta que utiliza funciones de agregación, 
-- limitación sobre una columan agregada que estamos definiendo en la consulta.
SELECT COUNT(age) FROM users HAVING COUNT(age) > 1;
-- en el ejemplo anterior se establece un filtro para que solo se muestren los resultados donde el conteo 
--de la columna age sea mayor a 1.

--Otro ejemplo de uso del comando HAVING es el siguiente:
SELECT COUNT(age) FROM users GROUP BY age HAVING COUNT(age) > 1;
-- en este caso, se agrupan los resultados por la columna age y luego se filtran los grupos que tienen un conteo mayor a 1

--Otro ejemplo distinto de uso del comando HAVING es el siguiente:
SELECT COUNT(age) FROM users GROUP BY age HAVING COUNT(age) > 1 AND age < 30;
-- en este caso, se agrupan los resultados por la columna age y luego se filtran los grupos que tienen un conteo mayor a 1 y además la edad sea menor