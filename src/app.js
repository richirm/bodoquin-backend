const express = require('express');
const app = express();

const bodyParser = require('body-parser');

// parse application/json
app.use(bodyParser.json());

/******* Base Datos ********/
const database = require('./configuration/database');
 /**************************/

/******* Servicios ********/
app.use('/educacion', require('./routes/educacion'));
app.use('/cultura', require('./routes/cultura'));
app.use('/animales', require('./routes/animales'));
/**************************/
 
/******* Endpoints ********/


/**************************/

/******* Arranque ********/
app.listen(3000, function () {
  console.log('La aplicación se ha levantado en el puerto 3000');
});
/**************************/
