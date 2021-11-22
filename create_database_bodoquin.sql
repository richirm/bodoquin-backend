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
CREATE TABLE Productos_Jugueteria (
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

/******** CREA TABLA TECNOLOGIA ******/

/*************************************/

/********** CREA TABLA MODA **********/

/*************************************/

/****** INSERTA DATA REPOSTERIA ******/
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_chocolate_fresa.jpg", "Torta húmeda", "Torta de leche de Óreo", "Torta rica en su sabor, ha ganado el premio internacional, hecha con agua manantial", 60.25, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc.");
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_selva_negra.jpg", "Torta húmeda", "Selva negra de cerezas", "Compuesta por capas de bizcochuelo de chocolate embebido en kirsch e intercaladas con nata y cerezas.", 55.50, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc.");

SELECT * FROM Productos_Reposteria;
/*************************************/

/****** INSERTA DATA JUGUETERIA ******/
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "piano.jpg", "0-2", "Juguetes", "Piano para bebes de deferentes colores para un mejor aprendizaje", 50.00, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "tortuga.jpg", "0-2", "Juguetes", "Totuga musical con canciones en ingles y español", 40.25, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "coche.jpg", "2-4", "Coche", "coche para niñas con diferentes diseños", 80.25, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "caballo.jpg", "2-4", "Caballito", "Caballo para montar y también es musical", 90.75, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "muñeco.jpg", "2-4", "Juguetes", "muñeca con chupon que llora y habla y remeda", 45.75, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "carro.jpg", "2-4", "Carrito", "Aprenderás a dar tus primeros pasitos jugando", 65.45, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "dinosaurios.jpg", "2-4", "Dino", "Jalaras a un carrito de dino divertido", 80.75, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "figuras.jpg", "2-4", "figuras", "juago dinamicos pra niños y niñas", 25.80, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "payaso.jpg", "2-4", "payasitos", "payasitos de madera para armar y elegir", 30.40, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "pelotas.jpg", "2-4", "pelotas", "pelotas de juguete muy modernas y coloridas", 15.75, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "cuadro.jpg", "2-4", "cuadritos", "cuadritos de madera de colores para armar", 55.75, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");
INSERT INTO Productos_Jugueteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "lonchera.jpg", "2-4", "lonchera", "lonchera de madera para llevar tus juguetes", 65.75, 0, "Fecha de vencimiento: 05/12/2023|Elaborado por: Juguetería mi mundo baby|Materiales: plastico, madera|Dimensiones: 50cm x 50cm");


SELECT * FROM Productos_Jugueteria;
/*************************************/

/****** INSERTA DATA TECNOLOGIA ******/

/*************************************/

/******** INSERTA DATA MODA **********/

/*************************************/