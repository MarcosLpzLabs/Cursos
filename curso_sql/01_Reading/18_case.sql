-- el comando CASE permite realizar comparaciones condicionales en SQL. 
--Se puede utilizar para evaluar una expresión y devolver un valor basado en diferentes condiciones. 
--A continuación, se muestra un ejemplo de cómo usar el comando CASE en una consulta SQL:
SELECT *,
CASE
	WHEN age > 17 THEN "ES MAYOR DE EDAD"
    ELSE "ES MENOR DE EDAD"
END AS ageText 
FROM users;

--otro:
SELECT *,
CASE
	WHEN age > 17 THEN TRUE
    ELSE FALSE
END AS "¿ES MAYOR DE EDAD?" 
FROM users;

--Otro:
SELECT *,
CASE
	WHEN age > 18 THEN "ES MAYOR DE EDAD"
    WHEN age = 18 THEN "Primer año mayoría de edad"
    ELSE "NO ES MAYOR DE EDAD"
END AS "¿ES MAYOR DE EDAD?" 
FROM users;

--otro:
SELECT 
    nombre,
    salario,
    CASE 
        WHEN salario < 30000 THEN 'Bajo'
        WHEN salario >= 30000 AND salario < 60000 THEN 'Medio'
        ELSE 'Alto'
    END AS categoria_salario
FROM empleados; 