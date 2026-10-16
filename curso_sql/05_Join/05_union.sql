-- Combinando el UNION ALL con LEFT JOIN y RIGHT JOIN podemos simular un FULL OUTER JOIN en MySQL.
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN
	dni
	ON users.user_id = dni.user_id
UNION ALL
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN
	dni
    ON users.user_id = dni.user_id;



SELECT * 
FROM users
LEFT JOIN
	dni
	ON users.user_id = dni.user_id
UNION ALL
SELECT *
FROM users
RIGHT JOIN
	dni
    ON users.user_id = dni.user_id;