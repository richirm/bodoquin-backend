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
/*************************************/

SELECT * FROM Mascotas;

/******** INSERTAR REGISTROS *********/
INSERT INTO Mascotas (idMascota, nombre, edad, precio, caracteristicas) VALUES (null, "Rufo", 5, 50, "Mediano, gris, jugueton");
INSERT INTO Mascotas (idMascota, nombre, edad, precio, caracteristicas) VALUES (null, "Lulu", 8, 100, "Pequeño, blanco, silencioso");
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