/********* CREA LA BD ***************/
CREATE DATABASE bodoquin_bd;
USE bodoquin_bd;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'bodoquin123';
flush privileges;
/************************************/

/******** CREA TABLA REPOSTERIA ******/
CREATE TABLE Productos_Reposteria (
  idProducto int NOT NULL AUTO_INCREMENT,
  nombreImg varchar(255),
  nombreCategoria varchar(255),
  nombreProducto varchar(255),
  descripcionProducto varchar(255),
  precioProducto decimal(8,2),
  cantidadProducto  int,
  especificaciones varchar(1000),
  PRIMARY KEY (idProducto)
);
/*************************************/

/******** CREA TABLA JUGUETERIA ******/

/*************************************/

/******** CREA TABLA TECNOLOGIA ******/

/*************************************/

/********** CREA TABLA MODA **********/

/*************************************/

/****** INSERTA DATA REPOSTERIA ******/
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_chocolate_fresa.jpg", "Torta húmeda", "Torta de leche de Óreo", "Torta rica en su sabor, ha ganado el premio internacional, hecha con agua manantial", 60.25, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc.");
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_selva_negra.jpg", "Torta húmeda", "Selva negra de cerezas", "Compuesta por capas de bizcochuelo de chocolate embebido en kirsch e intercaladas con nata y cerezas.", 55.50, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc.");

/*************************************/

/****** INSERTA DATA JUGUETERIA ******/

/*************************************/

/****** INSERTA DATA TECNOLOGIA ******/

/*************************************/

/******** INSERTA DATA MODA **********/

/*************************************/