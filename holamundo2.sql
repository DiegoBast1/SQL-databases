use holamundo;

create table user (
 id int not null auto_increment,
 name varchar(50) not null,
 edad int not null,
 email varchar(100) not null,
 PRIMARY KEY (id)
);

INSERT INTO user (name, edad, email) VALUES	('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) VALUES	('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) VALUES	('Nicolas', 37, 'nicolas@gmail.com');
INSERT INTO user (name, edad, email) VALUES	('Raul', 68, 'raul@gmail.com');

SELECT * FROM user;
SELECT * FROM user limit 2;
SELECT * FROM user WHERE edad > 15;
SELECT * FROM user WHERE edad >= 15;
SELECT * FROM user WHERE edad > 20 AND email = 'nicolas@gmail.com';
SELECT * FROM user WHERE edad > 20 OR email = 'layla@gmail.com';
SELECT * FROM user WHERE email != 'layla@gmail.com';
SELECT * FROM user WHERE edad BETWEEN 15 AND 30;
SELECT * FROM user WHERE email LIKE '%gmail%';
SELECT * FROM user WHERE email LIKE 'layla%';

-- se ordena por edad de forma ascendente.
SELECT * FROM user ORDER BY edad ASC;
SELECT * FROM user ORDER BY edad DESC;

SELECT max(edad) AS mayor FROM user;
SELECT min(edad) AS menor FROM user;

-- para seleccionar por columnas.
SELECT id, name FROM user;
SELECT id, name AS nombre FROM user;