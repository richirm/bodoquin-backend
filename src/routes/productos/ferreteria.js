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

router.get('/ferreteria/servicios/soporte/controles', function(req, res) {
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
