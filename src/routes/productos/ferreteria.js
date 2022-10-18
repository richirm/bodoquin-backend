const router = require('express').Router();

const database = require('../../configuration/database');

router.get('/ferreteria', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Ferreteria`,
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






