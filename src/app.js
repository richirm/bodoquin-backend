const express = require('express');
const app = express();

/******* Base Datos ********/
const database = require('./configuration/database');
 /**************************/

/******* Servicios ********/
app.use('/educacion', require('./routes/educacion'));
app.use('/animales', require('./routes/animales'));
/**************************/
 
/******* Endpoints ********/


app.get('/musicas', function (req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Musicas 
                  WHERE precio >= ${req.query.precioMin} 
                  AND precio <= ${req.query.precioMax}`, 
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send(result);
          }
        }
      );
    }, 
    (error) => {
      res.send(error);
    }
  );  
});

app.get('/centrosTuristicos', function (req, res) {
  const centrosTuristicos = [
    {
      nombre: 'machupichu',
      precio: 80,
      pais: 'Perú'
    },
    {
      nombre: 'Iguazú',
      precio: 90,
      pais: 'Brazil'
    },
    {
      nombre: 'pirámides',
      precio: 70,
      pais: 'Egipto'
    }
  ];
  res.send(centrosTuristicos);
});

app.get('/comidas', function (req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Comidas 
                  WHERE precio >= ${req.query.precioMin} 
                  AND precio <= ${req.query.precioMax}`, 
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send(result);
          }
        }
      );
    }, 
    (error) => {
      res.send(error);
    }
  );  
}); 
/**************************/

/******* Arranque ********/
app.listen(3000, function () {
  console.log('La aplicación se ha levantado en el puerto 3000');
});
/**************************/
