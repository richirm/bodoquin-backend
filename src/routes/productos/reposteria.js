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
        `UPDATE Productos_Reposteria 
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

router.delete('/reposteria/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `DELETE FROM Productos_Reposteria 
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

router.get('/reposteria/servicios/asistencia/controles', function(req, res) {
  //Pendiente la conexion a la BD
  const controles = [
    {
      id: 'nombre',
      label: 'Nombre',
      tipo: 'input'
    },
    {
      id: 'apellidoP',
      label: 'Apellido P',
      tipo: 'input'
    },
    {
      id: 'apellidoM',
      label: 'Apellido M',
      tipo: 'input'
    },
    {
      id: 'direccion',
      label: 'Direccion',
      tipo: 'input'
    },
    {
      id: 'correo',
      label: 'Correo',
      tipo: 'input'
    },
    {
      id: 'telefono',
      label: 'Teléfono',
      tipo: 'input'
    },
    {
      id: 'descripcion',
      label: 'Descripcion',
      tipo: 'textarea'
    }
  ];
  
  res.send(controles);
});

module.exports = router;






