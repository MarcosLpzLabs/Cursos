-- utilización de clave foránea para una relación 1:1
CREATE TABLE dni(
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

--Ejemplo tabla 1:n
CREATE TABLE companies(
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);


ALTER TABLE users
ADD company_id int;

--OJO, company_id debe ser del mismo tipo de dato que la columna referenciada (company_id) en la tabla companies. 
--En este caso, ambos son int.

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);



--Para la relación n:m se debe crear una tabla intermedia 
--que contenga las claves foráneas de ambas tablas relacionadas.
CREATE TABLE languages(
	language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE users_languages(
	user_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int NOT NULL,
    language_id int NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(user_id,language_id)
);

--INSERT

--relación 1:1
INSERT INTO dni (dni_number) VALUES (44444444);
INSERT INTO dni (dni_number,user_id) VALUES (22222222,2);

--relacion 1:n
INSERT INTO companies (name) VALUES ('LaCompany');
INSERT INTO companies (name) VALUES ('COMPANY SL');
INSERT INTO companies (name) VALUES ('EXAMPLE SA');


UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 5;
UPDATE users SET company_id = 1 WHERE user_id = 7;

--relación n:m
INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('COBOL');



INSERT INTO users_languages (user_id,language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id,language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id,language_id) VALUES (1, 5);

INSERT INTO users_languages (user_id,language_id) VALUES (2, 3);
INSERT INTO users_languages (user_id,language_id) VALUES (2, 5);
