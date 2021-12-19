const router = require('express').Router();

const database = require('../../configuration/database');

router.get('/reposteria', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Reposteria`,
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

router.get('/reposteria/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Reposteria
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

router.post('/reposteria', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `INSERT INTO Productos_Reposteria 
            (
              idProducto, 
              nombreImg, 
              nombreCategoria, 
              nombreProducto, 
              descripcionProducto, 
              precioProducto, 
              cantidadProducto, 
              especificaciones
            ) VALUES 
            (
              null, 
              "${req.body.nombreImg}", 
              "${req.body.nombreCategoria}", 
              "${req.body.nombreProducto}", 
              "${req.body.descripcionProducto}", 
              ${req.body.precioProducto}, 
              ${req.body.cantidadProducto}, 
              "${req.body.especificaciones}"
            )
        `,
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send({
              idProducto: result.insertId
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

router.put('/reposteria', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SQL`,
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

router.delete('/reposteria/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SQL`,
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






