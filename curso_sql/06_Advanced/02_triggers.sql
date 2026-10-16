-- los triggers son procedimientos almacenados que se ejecutan automáticamente cuando
--ocurre un evento específico en la base de datos. 
--Pueden ser utilizados para mantener la integridad de los datos, auditar cambios, o implementar reglas de negocio.

delimiter |

CREATE TRIGGER tg_email
AFTER UPDATE
ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id,email)
        VALUES (OLD.user_id,OLD.email);
	END IF;
END;

|

delimiter ;


UPDATE users SET email = "lopezmarcos@email.com" WHERE user_id = 1;

--Para borrar un trigger
DROP TRIGGER tg_email;