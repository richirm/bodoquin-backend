const router = require('express').Router();

const database = require('../../configuration/database');

router.get('/centrosTuristicos', function (req, res) {
  const centrosTuristicos = [
    {
      nombre: 'machupichu',
      precio: 80,
      pais: 'Perú'
    },
    {
      nombre: 'Iguazú',
      precio: 90,
      pais: 'Brazil'
    },
    {
      nombre: 'pirámides',
      precio: 70,
      pais: 'Egipto'
    }
  ];
  res.send(centrosTuristicos);
});

module.exports = router;