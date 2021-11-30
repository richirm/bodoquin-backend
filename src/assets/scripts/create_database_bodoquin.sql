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
CREATE TABLE Productos_Tecnologia (
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

/********** CREA TABLA MODA **********/
CREATE TABLE Productos_Moda (
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

/****** INSERTA DATA REPOSTERIA ******/
INSERT INTO Productos_Reposteria (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "torta_chocolate_fresa.jpg", "", "Torta de leche de Óreo", "Torta rica en su sabor, ha ganado el premio internacional, hecha con agua manantial", 60.25, 0, "Fecha de vencimiento: 01/11/2021|Elaborado por: Panadería Bodoquin|Ingredientes: Galletas óreo, Leche, Huevos, etc.");
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

/****** INSERTA DATA Tecnologia ******/
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "galaxys.jpg", "Samsung", "Samsung galaxy s", "6 GB RAM + 28 gb almacenamiento + 5000 mah + full hd", 599, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "galaxynote20.jpg", "Samsung", "Samsung galaxy note20", "8 GB RAM + 256 gb almacenamiento + 6000 mah + full hd", 2499, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "motog9.jpg", "Motorola", "Motorola g9 plus", "3 GB RAM + 64 gb almacenamiento + 3500 mah + full hd", 999, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "motog7power.jpg", "Motorola", "Motorola g7 power", "3 GB RAM + 64 gb almacenamiento + 4500 mah + hd", 899, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "samsungtv50.jpg", "Samsung tv", "Samsung tv 50", "Full hd + puerto hdmi + magic control", 899, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "samsungtv65.jpg", "SamsungTv", "Samsung tv 65", "Ultra hd 4k + pantalla cristal + magic control", 2899, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "samsungtv70.jpg", "SamsungTv", "Samsung tv 70", "Ultra hd + 2 puertos hdmi + conxion bluetooh", 2659, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "daeewotv.jpg", "DaeewooTv", "Daeewoo tv 49", "Pantalla full hd + wifi + samart tv", 899, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "laptophpgaming.jpg", "Asus", "Laptop gaming asus", "6gb ram + tb ssd + full hd", 7999, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "macbookair.jpg", "Apple", "Macbook air", "8 gb ram + 500 ssd + bluetooh", 899, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "laptoph15.jpg", "HP", "Laptop hp 5", "8gb ram +  tb ssd + full hd", 2600, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");
INSERT INTO Productos_Tecnologia (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "laptoplg.jpg", "LG", "Laptop lg", "2 GB RAM + 528 gb almacenamiento + uhd 4k", 2589, 0, "Fecha de produccion: 0//202,Elaborado por: bodoquin tecnologias|componentes: procesador intel| ram microsfot.");

SELECT * FROM Productos_Tecnologia;
/*************************************/

/******** INSERTA DATA MODA **********/
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "carnivalxl.jpg", "Sombras", "Carnival xl", "Paleta de sombras 40 tonos de diversos colores", 350, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "nars.jpg", "Base", "Nars", "Base de maquillaje de larga duracion con alta cobertura", 100, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "casaca.jpg", "Casacas", "Casaca de cuero mujer", "Casaca de cuero color negro , doble cara", 400, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "barclayjeans.jpg", "Jean", "Jean mujer cullote", "Jean clasico con material 100% algodon", 129, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "setdeanillos.jpg", "Anillos", "Twint set", "Anillo rose de 3 mm en plata de 925 + juego de aretes", 199, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "sunglassesaesthetic.jpg", "Lentes", "Lentes de sol", "lentes con proteccion uv + estuche + audifonos", 399, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "reloj.jpg", "Reloj", "Reloj de mujer", "Fino reloj dolcce & gabanna", 999, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "sandalias.jpg", "Sandalias", "Sandalias de verano", "Lindas sandalias color camello", 399, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "arete.jpg", "Aretes", "Aretes de plata", "Aretes con acabados en plata de diferentes modelos", 89, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "bota.jpg", "Botas", "Botas de cuero", "Botas de cuero de piel de lagarto con finos acabados", 999, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "sombrero.jpg", "Sombrero", "Sombrero moderno de playa", "Lindo sombrero con excelentes acabados", 150, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");
INSERT INTO Productos_Moda (idProducto, nombreImg, nombreCategoria, nombreProducto, descripcionProducto, precioProducto, cantidadProducto, especificaciones) VALUES (null, "labial.jpg", "Labial", "Labial mate", "Sabor fresa y extra duracion", 50, 0, "Fecha de vencimiento: 01/11/2025|Elaborado por: Boutique Bodoquin|Ingredientes: componentes de calidad.");

SELECT * FROM Productos_Moda;
/*************************************/