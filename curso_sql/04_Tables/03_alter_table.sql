--Para modificar una tabla, podemos usar ALTER TABLE, 
--que es una instrucción que permite cambiar la estructura de la tabla.
CREATE TABLE persons8(
	id int NOT NULL AUTO_INCREMENT,
    name varchar(100)  NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK (age >= 18) 
);

ALTER TABLE persons8
ADD surname varchar(100) ;

--Si queremos cambiar el nombre de una columna, podemos usar RENAME COLUMN  ,
ALTER TABLE persons8
RENAME COLUMN surname TO description;


--Si queremos modificar el tipo de datos de una columna, podemos usar MODIFY COLUMN,
ALTER TABLE persons8
MODIFY COLUMN description varchar(250) ;

---Si queremos eliminar una columna, podemos usar DROP COLUMN,
ALTER TABLE persons8
DROP COLUMN description;
