--limita el numero e elementos de la tabla que se extraen.
SELECT * FROM users LIMIT 2;

SELECT * FROM users WHERE NOT email = "user@email.com" OR NOT age = 85 LIMIT 2;
--puede ser muy util en tablas con muchos datos, reduciendo tiempos de carga