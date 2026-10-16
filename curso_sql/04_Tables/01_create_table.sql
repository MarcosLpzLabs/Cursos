CREATE TABLE persons(
	id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);

--Para evitar que una columna tenga valores nulos, podemos usar NOT NULL,
-- que es una restricción que asegura que la columna no pueda tener valores nulos.
CREATE TABLE persons2(
	id int NOT NULL,
    name varchar(100)  NOT NULL,
    age int,
    email varchar(50),
    created date
);

--para evitar entradas duplicadas, podemos usar UNIQUE, 
--que es una restricción que asegura que los valores de la columna sean únicos.
CREATE TABLE persons3(
	id int NOT NULL,
    name varchar(100)  NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id)
);

-Para establecer una clave primaria, podemos usar PRIMARY KEY, que es una restricción 
--que asegura que los valores de la columna sean únicos y no nulos.
CREATE TABLE persons4(
	id int NOT NULL,
    name varchar(100)  NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);

--Podemos usar CHECK para validar datos en una columna, por ejemplo, que la edad sea mayor a 18 años
CREATE TABLE persons5(
	id int NOT NULL,
    name varchar(100)  NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK (age >= 18) 
);

--Para introducir datos por defecto en una columna, podemos usar DEFAULT, 
--que es una restricción que establece un valor predeterminado para la columna.
CREATE TABLE persons6(
	id int NOT NULL,
    name varchar(100)  NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK (age >= 18) 
);

--Para datos automáticamente incrementales, podemos usar AUTO_INCREMENT, 
--que es una restricción que permite que la columna se incremente automáticamente 
--cada vez que se inserta un nuevo registro.
CREATE TABLE persons7(
	id int NOT NULL AUTO_INCREMENT,
    name varchar(100)  NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK (age >= 18) 
);