const router = require('express').Router();

const database = require('../../configuration/database');

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

router.post('/musica', function (req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `INSERT INTO Musicas
            ( 
              idMusica, 
              nombre, 
              precio, 
              genero
            ) VALUES 
            ( 
              null, 
              "${req.body.nombre}", 
              ${req.body.precio}, 
              "${req.body.genero}"
            )`, 
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send({
              idMusica: result.insertId
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

router.put('/musica', function (req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `UPDATE Musicas 
         SET 
          nombre = "${req.body.nombre}", 
          precio = ${req.body.precio}, 
          genero = "${req.body.genero}" 
         WHERE idMusica = ${req.body.idMusica}`, 
        (error, result) => {
          if(!!error) {
            res.send(error);
          } else {
            res.send({
              idMusica: req.body.idMusica
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

module.exports = router;
