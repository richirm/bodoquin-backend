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
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_chocolate.jpg", "Torta húmeda", "Torta Chocolate", "12 porciones, kekes, Manjar, Fudge de una rica Torta Chocolate.", 44.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_dely_oreo.jpg", "Torta húmeda", "Deli Oreo", "12 porciones con galletas de oreo vainilla, polvo de chocolate de una rica Deli Oreo.", 72.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_barra_3_leches.jpg", "Torta húmeda", "Barra tres leches", "12 porciones aproximadamente, con cerezas, fosh, manjar y listo para comer en tu almuerzo.", 49.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "keke_pina.jpg", "Kekes", "Keke de piña", "Muy rico, sabroso y esponjoso, con piñas azucaradas y dulces como a todos nos gusta", 24.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "keke_zanahoria.jpg", "Kekes", "keke de zanahoria", "Keke de Zanahoria con Manjar Blanco y Castañas, a precio de promición, sólo por hoy.", 42.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "keke_marmoleado.jpg", "Kekes", "Keke Marmoleado", "12-14 porciones de keke sabor a chocolate, con frutos secos que descubrirás mientras vayas comiendo.", 22.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "keke_platano_nueces.jpg", "Kekes", "Keke de Plátano con Nueces", "12-14 porciones de keke sabor a chocolate, con frutos secos que descubrirás mientras vayas comiendo.", 22.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_barra_torta_chocolate.jpg", "Torta húmeda", "Barra torta de chocolate", "12 porciones aproximadamente, con cerezas, fosh, manjar y listo para comer en tu almuerzo.", 49.50, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_cumple_fiesta.jpg", "Torta húmeda", "Feliz Cumple Fiesta", "12 porciones, compuesta por capas de bizcochuelo de caramelo y con el diseño que más de guste.", 69.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_delicia_fresa.jpg", "Torta húmeda", "Torta Delicia de Fresa", "24 porciones, compuesta por fresas y fosh, listo para tus cumpleaños y días que más te gusten disfrutar.", 84.00, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc."); 

SELECT * FROM Productos_Reposteria;
/*************************************/

/****** INSERTA DATA JUGUETERIA ******/

/*************************************/

/****** INSERTA DATA TECNOLOGIA ******/

/*************************************/

/******** INSERTA DATA MODA **********/

/*************************************/