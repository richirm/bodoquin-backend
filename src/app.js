const express = require('express');
const app = express();

const bodyParser = require('body-parser');

// parse application/json
app.use(bodyParser.json());

/******* Base Datos ********/
const database = require('./configuration/database');
 /**************************/

/******* Modulos ********/
app.use('/educacion', require('./routes/educacion/alumnos'));
app.use('/educacion', require('./routes/educacion/cursos'));

app.use('/cultura', require('./routes/cultura/comidas'));
app.use('/cultura', require('./routes/cultura/musicas'));
app.use('/cultura', require('./routes/cultura/centros-turisticos'));

app.use('/animales', require('./routes/animales/mascotas'));

app.use('/productos', require('./routes/productos/reposteria'));
app.use('/productos', require('./routes/productos/jugueteria'));
/**************************/

/******* Arranque ********/
app.listen(3000, function () {
  console.log('La aplicación se ha levantado en el puerto 3000');
});
/**************************/
