create database holamundo;
show databases;
use holamundo;

create table animales (
  id int,
  tipo varchar(255),
  estado varchar(255),
  PRIMARY KEY (id)
);

ALTER TABLE animales MODIFY COLUMN id int auto_increment;
-- esto es un simple comentario, esta linea no se ejecuta

INSERT INTO animales (tipo, estado) VALUES ('perro', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('pajaro', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('tiburon', 'triste');

SHOW CREATE DATABASE holamundo;

SELECT * FROM animales;
SELECT * FROM animales WHERE id = 1;
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'pajaro';

UPDATE animales SET estado = 'feliz' WHERE id = 3;

SELECT * FROM animales;

DELETE FROM animales WHERE estado = 'feliz';
-- Error Code: 1175. You are using safe update mode and you tried to update 
-- a table without a WHERE that uses a KEY column.  To disable safe mode,
-- toggle the option in Preferences -> SQL Editor and reconnect.

DELETE FROM animales WHERE id = 2;

SELECT * FROM animales;

UPDATE animales SET estado = 'triste' WHERE tipo = 'tiburon';
-- esto tambien arroja error 1175. Pasa con los Delete From y Update.

UPDATE animales SET estado = 'triste' WHERE id = 3;
