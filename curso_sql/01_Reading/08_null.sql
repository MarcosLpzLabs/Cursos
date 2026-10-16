--sirve para verificar si una celda esta vacia o nula, si es asi devuelve un valor, si no devuelve otro valor
SELECT * FROM users WHERE surname IS NOT NULL;

SELECT * FROM users WHERE surname IS NULL AND email IS NULL;


-- La sentencia IFNULL() permite reemplazar un valor NULL por otro valor especificado.
SELECT name,surname,IFNULL(age,0) FROM users;

--Sin embargo, la sentencia ISNULL() permite verificar si un valor es NULL o no, devolviendo un valor booleano.
SELECT name,surname,ISNULL(age) FROM users;