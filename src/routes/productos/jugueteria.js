const router = require('express').Router();

const database = require('../../configuration/database');

router.get('/jugueteria', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Jugueteria`,
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

router.get('/jugueteria/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Jugueteria
         WHERE idProducto = ${req.params.idProducto}`,
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send(result[0]);
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