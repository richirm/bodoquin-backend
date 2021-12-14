const router = require('express').Router();

const database = require('../configuration/database');

router.get('/musicas', function (req, res) {
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

router.post('/comida', function (req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `INSERT INTO Comidas 
            ( 
              idComida, 
              nombre, 
              precio, 
              ingrediente
            ) VALUES 
            ( 
              null, 
              "${req.body.nombre}", 
              ${req.body.precio}, 
              "${req.body.ingrediente}"
            )`, 
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send({
              idComida: result.insertId
            });
          }
        }
      );
    }, 
    (error) => {
      res.send(error);
    }
  );  
});

router.get('/centrosTuristicos', function (req, res) {
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

router.get('/comidas', function (req, res) {
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


module.exports = router;