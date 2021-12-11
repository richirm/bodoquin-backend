const express = require('express');
const app = express();

/******* Base Datos ********/
const database = require('./configuration/database');
 /**************************/

/******* Servicios ********/
app.use('/educacion', require('./routes/educacion'));
app.use('/cultura', require('./routes/cultura'));
/**************************/
 
/******* Endpoints ********/
app.get('/mascotas', function (req, res) {
  const mascotas = [
    {
      nombre: 'Rufo',
      edad: 8,
      color: 'gris'
    },
    {
      nombre: 'Ricardito',
      edad: 6,
      color: 'blanco'
    },
    {
      nombre: 'Marco',
      edad: 8,
      color: 'crema'
    }
  ];
  res.send(mascotas);
});


/**************************/

/******* Arranque ********/
app.listen(3000, function () {
  console.log('La aplicación se ha levantado en el puerto 3000');
});
/**************************/
