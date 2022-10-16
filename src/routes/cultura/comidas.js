const router = require('express').Router();

const database = require('../../configuration/database');

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

router.put('/comida', function (req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `UPDATE Comidas 
         SET 
          nombre = "${req.body.nombre}", 
          precio = ${req.body.precio}, 
          ingrediente = "${req.body.ingrediente}" 
         WHERE idComida = ${req.body.idComida}`, 
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send({
              idComida: req.body.idComida
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

router.delete('/comida/:idComida', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `DELETE FROM Comidas 
         WHERE idComida = ${req.params.idComida}`, 
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