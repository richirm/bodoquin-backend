const router = require('express').Router();

const database = require('../../configuration/database');

router.get('/moda', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Moda`,
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

router.get('/moda/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Moda
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

router.post('/moda', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `INSERT INTO Productos_Moda 
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

router.put('/moda', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `UPDATE Productos_Moda 
         SET nombreImg = "${req.body.nombreImg}",
             nombreCategoria = "${req.body.nombreCategoria}",
             nombreProducto = "${req.body.nombreProducto}",
             descripcionProducto = "${req.body.descripcionProducto}",
             precioProducto = "${req.body.precioProducto}",
             cantidadProducto = "${req.body.cantidadProducto}",
             especificaciones = "${req.body.especificaciones}"
         WHERE idProducto = ${req.body.idProducto}`,
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send();
          }
        }
      );
    },
    (error) => {
      res.send(error);
    }
  );
});

router.delete('/moda/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `DELETE FROM Productos_Moda 
         WHERE idProducto = ${req.params.idProducto}`,
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send();
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






