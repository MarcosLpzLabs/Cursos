--Los índices son estructuras de datos que mejoran la velocidad de las operaciones de 
--consulta en una tabla a costa de espacio adicional y tiempo de mantenimiento. 
--Los índices se crean en columnas específicas de una tabla y permiten un acceso más rápido a los datos.
CREATE INDEX idx_name ON users(name);

CREATE UNIQUEINDEX idx_name ON users(name);

CREATE INDEX idx_name_surname ON users(name, surname);

--Esto me permitiría hacer consultas más rápidas en la tabla users cuando busco por nombre y apellido,
--ya que el índice se ha creado en ambas columnas. 
--Sin embargo, es importante tener en cuenta que la creación de índices también puede afectar el 
--rendimiento de las operaciones de inserción, actualización y eliminación, 
--ya que el índice debe actualizarse cada vez que se modifican los datos en las columnas indexadas.


--Para borrarlo 
DROP INDEX idx_name ON users;

