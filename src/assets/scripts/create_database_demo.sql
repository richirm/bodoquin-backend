/********* CREA LA BD ***************/
CREATE DATABASE bodoquin_bd_demo;
USE bodoquin_bd_demo;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'bodoquin123';
flush privileges;
/************************************/

/********* CREA LAS TABLAS **********/
CREATE TABLE Mascotas (
  idMascota int NOT NULL AUTO_INCREMENT,
  nombre varchar(255),
  edad int,
  precio decimal(8,2),
  caracteristicas varchar(1000),
  PRIMARY KEY (idMascota)
);

CREATE TABLE Alumnos (
  idAlumno int NOT NULL AUTO_INCREMENT,
  nombre varchar(255),
  edad int,
  color varchar(50),
  PRIMARY KEY (idAlumno)
);

CREATE TABLE Musicas (
  idMusica int NOT NULL AUTO_INCREMENT,
  nombre varchar(255),
  precio int,
  genero varchar(50),
  PRIMARY KEY (idMusica)
);

/*************************************/

SELECT * FROM Mascotas;

/******** INSERTAR REGISTROS *********/
INSERT INTO Mascotas (idMascota, nombre, edad, precio, caracteristicas) VALUES (null, "Rufo", 5, 50, "Mediano, gris, jugueton");
INSERT INTO Mascotas (idMascota, nombre, edad, precio, caracteristicas) VALUES (null, "Lulu", 8, 100, "Pequeño, blanco, silencioso");

INSERT INTO Alumnos (idAlumno, nombre, edad, color) VALUES (null, "Rufo", 8, "gris");
INSERT INTO Alumnos (idAlumno, nombre, edad, color) VALUES (null, "Pierina", 10, "negro");
INSERT INTO Alumnos (idAlumno, nombre, edad, color) VALUES (null, "Boby", 18, "blanco");
INSERT INTO Alumnos (idAlumno, nombre, edad, color) VALUES (null, "Ricardito", 7, "Blanco y marron");
INSERT INTO Alumnos (idAlumno, nombre, edad, color) VALUES (null, "Oso", 23, "Negro");

INSERT INTO Musicas (idMusica, nombre, precio, genero) VALUES (null, "the Cranberries", 50, "rock");
INSERT INTO Musicas (idMusica, nombre, precio, genero) VALUES (null, "monkey dance", 90, "pop");
INSERT INTO Musicas (idMusica, nombre, precio, genero) VALUES (null, "inolvidable", 80, "balada");

/*************************************/

/****** ACTUALIZAMOS REGISTROS *******/
UPDATE Mascotas SET nombre = "Rufino" WHERE idMascota = 1;
/*************************************/

/******** ELIMINAR REGISTROS *********/
DELETE FROM Mascotas WHERE idMascota = 2;
/*************************************/

/****** SELECCIONAR REGISTROS ********/
SELECT * FROM Mascotas;
/*************************************/
