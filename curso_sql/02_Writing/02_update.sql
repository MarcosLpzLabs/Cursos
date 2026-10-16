-- RECORDAR SIEMPRE UTILIZAR LOS UPDATE SEGUIDOS DE UN WHERE, SI NO SE PUEDE MODIFICAR TODA LA TABLA
UPDATE users SET age = '13' WHERE user_id = 11;

--En la sentencia anterior hay un error, la edad debe ser un entero, pero la hemos puesto entre comillas, 
--por lo que el motor de base de datos nos dará un error (o debería). Si lo deja pasar es porque lo ha convertido 
--automáticamente a un entero, pero no es buena práctica.

UPDATE users SET age = 13 WHERE user_id = 11;

UPDATE users SET age = 16, init_date = '2023-07-14' WHERE user_id = 11;