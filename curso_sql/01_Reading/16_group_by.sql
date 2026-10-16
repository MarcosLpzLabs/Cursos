--GROUP BY se encarga de agrupar columnas de una tabla, para poder aplicar funciones de agregación a cada grupo.
SELECT COUNT(age),age FROM users GROUP BY age;