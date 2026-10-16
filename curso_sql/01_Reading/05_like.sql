--sirve para buscar contenido en la tabla segun un criterio establecido
-- se utiliza % --> criterio de busqueda dinamico 
SELECT * FROM users WHERE email LIKE '%email.com' ;

SELECT * FROM users WHERE email LIKE '%@%' ;