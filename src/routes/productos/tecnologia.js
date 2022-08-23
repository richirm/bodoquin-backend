const router = require('express').Router();

const database = require('../../configuration/database');

router.get('/tecnologia', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Tecnologia`,
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

router.get('/tecnologia/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `SELECT * FROM Productos_Tecnologia
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

router.post('/tecnologia', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `INSERT INTO Productos_Tecnologia 
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

router.put('/tecnologia', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `UPDATE Productos_Tecnologia 
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

router.delete('/tecnologia/:idProducto', function(req, res) {
  database.conectar(
    (connection) => {
      connection.query(
        `DELETE FROM Productos_Tecnologia 
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

router.get('/tecnologia/servicios/asistencia/controles', function(req, res){
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
      label: 'Telefono',
      tipo: 'input'
    },
    
    {
      id: 'descripcion',
      label: 'Descripción',
      tipo: 'textarea'
    },
    
    {
      id: 'sugerencia',
      label: 'Sugerencia',
      tipo: 'textarea'
    }
  ];
  res.send(controles);
});

router.get('/tecnologia/servicios/soporte/controles', function(req, res){
  //Pendiente la conexion a la BD
  const controles = [
    {
      id: 'codProducto',
      label: 'Codigo Producto',
      tipo: 'input'
    },
    
    {
      id: 'nomProducto',
      label: 'Nombre Producto',
      tipo: 'input'
    },
    {
      id: 'fecha',
      label: 'Fecha',
      tipo: 'input'
    },
    
    {
      id: 'hora',
      label: 'Hora',
      tipo: 'input'
    },
    
    {
      id: 'descripcion',
      label: 'Descripcion',
      tipo: 'textarea'
    },
    
    {
      id: 'problema',
      label: 'Problema',
      tipo: 'textarea'
    }
  ];
  res.send(controles);
});

router.get('/tecnologia/servicios/reparacion/controles', function(req, res){
  //Pendiente la conexion a la BD
  const controles = [
    {
      id: 'codProducto',
      label: 'Codigo Producto',
      tipo: 'input'
    },
    
    {
      id: 'nomProducto',
      label: 'Nombre Producto',
      tipo: 'input'
    },
    {
      id: 'local',
      label: 'Local',
      tipo: 'input'
    },
    
    {
      id: 'hora',
      label: 'Hora',
      tipo: 'input'
    },
    
    {
      id: 'averia',
      label: 'Averia',
      tipo: 'textarea'
    }
  ];
  res.send(controles);
});

module.exports = router;






