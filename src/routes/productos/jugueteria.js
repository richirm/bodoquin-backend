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

router.post('/jugueteria', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `INSERT INTO Productos_Jugueteria 
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

router.put('/jugueteria', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `UPDATE Productos_Jugueteria 
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

router.delete('/jugueteria/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `DELETE FROM Productos_Jugueteria 
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

router.get('/jugueteria/servicios/asistencia/controles', function(req, res) {
  // Pendiente a la conexion a la BD
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
      label: 'Dirección',
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
      id: 'fecha',
      label: 'fecha',
      tipo: 'input'
    },
    {
      id: 'descripcion',
      label: 'Descripción',
      tipo: 'textarea'
    },
    {
      id: 'area',
      label: 'Area',
      tipo: 'input'
    },
    {
      id: 'mensaje',
      label: 'Mensaje',
      tipo: 'textarea'
    }
  ];
  
  res.send(controles);
});

router.get('/jugueteria/servicios/averias/controles', function(req, res) {
  // Pendiente a la conexion a la BD
  const controles = [
  {
      id: 'codProducto',
      label: 'Código producto',
      tipo: 'input'
    },
    {
      id: 'marca',
      label: 'Marca',
      tipo: 'input'
    },
    {
      id: 'area',
      label: 'Area',
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
      id: 'fecha',
      label: 'fecha',
      tipo: 'input'
    },
    {
      id: 'descripcion',
      label: 'Descripción',
      tipo: 'textarea'
    }
  ];
  
  res.send(controles);
});

router.get('/jugueteria/servicios/artefactos/controles', function(req, res) {
  // Pendiente a la conexion a la BD
  const controles = [
    {
      id: 'producto',
      label: 'Producto',
      tipo: 'input'
    },
    {
      id: 'marca',
      label: 'Marca',
      tipo: 'input'
    },
    {
      id: 'tamanio',
      label: 'Tamaño',
      tipo: 'input'
    },
    {
      id: 'color',
      label: 'Color',
      tipo: 'input'
      
    },
    {
      id: 'telefono',
      label: 'Teléfono',
      tipo: 'input'
    },
    {
      id: 'fecha',
      label: 'fecha',
      tipo: 'input'
    },
    {
      id: 'descripcion',
      label: 'Descripción',
      tipo: 'textarea'
    }
  ];
  
  res.send(controles);
});

module.exports = router;



