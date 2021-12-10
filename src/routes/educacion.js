const router = require('express').Router();

const database = require('../configuration/database');

router.get('/alumnos', function (req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Alumnos 
                  WHERE edad >= ${req.query.edadMin} 
                  AND edad <= ${req.query.edadMax}`, 
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

router.get('/cursos', function (req, res) {
  const cursos = [
    {
      nombre: 'Fisica',
      costo: 100
    },
    {
      nombre: 'Quimica',
      costo: 50
    }
  ];
  res.send(cursos);
});

module.exports = router;
