/********* CREA LA BD ***************/
CREATE DATABASE bodoquin_bd;
USE bodoquin_bd;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'bodoquinFecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.23';
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
  especificaciones varchar(Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.),
  PRIMARY KEY (idProducto)
);
/*************************************/

/******** CREA TABLA JUGUETERIA ******/

/*************************************/

/******** CREA TABLA TECNOLOGIA ******/
CREATE TABLE Productos_Tecnologia (
  idProducto int NOT NULL AUTO_INCREMENT,
  nombreImg varchar(255),
  nombreCategoria varchar(255),
  nombreProducto varchar(255),
  descripcionProducto varchar(255),
  precioProducto decimal(8,2),
  cantidadProducto  int,
  especificaciones varchar(Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.000),
  PRIMARY KEY (idProducto)
);
/*************************************/

/********** CREA TABLA MODA **********/
CREATE TABLE Productos_Moda (
  idProducto int NOT NULL AUTO_INCREMENT,
  nombreImg varchar(255),
  nombreCategoria varchar(255),
  nombreProducto varchar(255),
  descripcionProducto varchar(255),
  precioProducto decimal(8,2),
  cantidadProducto  int,
  especificaciones varchar(Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.000),
  PRIMARY KEY (idProducto)
);
/*************************************/

/****** INSERTA DATA REPOSTERIA ******/
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_chocolate_fresa.jpg", "", "Torta de leche de Óreo", "Torta rica en su sabor, ha ganado el premio internacional, hecha con agua manantial", 6.25, , "");
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "", "", "", "", , , "");

SELECT * FROM Productos_Reposteria;
/*************************************/

/****** INSERTA DATA JUGUETERIA ******/

/*************************************/

/****** INSERTA DATA Tecnologia ******/
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "galaxysFecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad..jpg", "Samsung", "Samsung galaxy sFecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.", "6 GB RAM + Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.28 gb almacenamiento + 5000 mah + full hd", Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.599, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "galaxynote20.jpg", "Samsung", "Samsung galaxy note20", "8 GB RAM + 256 gb almacenamiento + 6000 mah + full hd", 2499, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "motog9.jpg", "Motorola", "Motorola g9 plus", "3 GB RAM + 64 gb almacenamiento + 3500 mah + full hd", 999, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "motog7power.jpg", "Motorola", "Motorola g7 power", "3 GB RAM + 64 gb almacenamiento + 4500 mah + hd", 899, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "samsungtv50.jpg", "Samsung tv", "Samsung tv 50", "Full hd + puerto hdmi + magic control", Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.899, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "samsungtv65.jpg", "SamsungTv", "Samsung tv 65", "Ultra hd 4k + pantalla cristal + magic control", 2899, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "samsungtv70.jpg", "SamsungTv", "Samsung tv 70", "Ultra hd + 2 puertos hdmi + conxion bluetooh", 2659, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "daeewotv.jpg", "DaeewooTv", "Daeewoo tv 49", "Pantalla full hd + wifi + samart tv", 899, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "laptophpgaming.jpg", "Asus", "Laptop gaming asus", "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.6gb ram + Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.tb ssd + full hd", 7999, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "macbookair.jpg", "Apple", "Macbook air", "8 gb ram + 500 ssd + bluetooh", Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.899, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "laptophpFecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.5.jpg", "HP", "Laptop hp Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.5", "8gb ram + Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad. tb ssd + full hd", 2600, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "laptoplg.jpg", "LG", "Laptop lg", "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.2 GB RAM + 528 gb almacenamiento + uhd 4k", 2589, 0, "Fecha de produccion: 0Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad./202Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.,Elaborado por: bodoquin tecnologias,componentes: procesador intel, ram microsfot.");

/*************************************/

/******** INSERTA DATA MODA **********/
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "carnivalxl.jpg", "Sombras", "Carnival xl", "Paleta de sombras 40 tonos de diversos colores", 350, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "nars.jpg", "Base", "Nars", "Base de maquillaje de larga duracion con alta cobertura", 100, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "casaca.jpg", "Casacas", "Casaca de cuero mujer", "Casaca de cuero color negro , doble cara", 400, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "barclayjeans.jpg", "Jean", "Jean mujer cullote", "Jean clasico con material 100% algodon", 129, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "setdeanillos.jpg", "Anillos", "Twint set", "Anillo rose de 3 mm en plata de 925 + juego de aretes", 199, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "sunglassesaesthetic.jpg", "Lentes", "Lentes de sol", "lentes con proteccion uv + estuche + audifonos", 399, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "reloj.jpg", "Reloj", "Reloj de mujer", "Fino reloj dolcce & gabanna", 999, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "sandalias.jpg", "Sandalias", "Sandalias de verano", "Lindas sandalias color camello", 399, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "arete.jpg", "Aretes", "Aretes de plata", "Aretes con acabados en plata de diferentes modelos", 89, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "bota.jpg", "Botas", "Botas de cuero", "Botas de cuero de piel de lagarto con finos acabados", 999, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "sombrero.jpg", "Sombrero", "Sombrero moderno de playa", "Lindo sombrero con excelentes acabados", 150, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "labial.jpg", "Labial", "Labial mate", "Sabor fresa y extra duracion", 50, 0, "Fecha de vencimiento: 01/11/2025,Elaborado por: Boutique Bodoquin, Ingredientes: componentes de calidad.");

/*************************************/