const router = require('express').Router();
const jwt = require('jsonwebtoken');

const database = require('../../configuration/database');
const seguridad = require('../../configuration/seguridad');

router.post('/generarToken', function(req, res) {
  const json = {
    usuario: "rrosales",
    nombres: "Ricardo Alfredo",
    apellidoPaterno: "Rosales",
    apellidoMaterno: "Maldonado"
  };  
  
  const token = jwt.sign(json, seguridad.PRIVATE_KEY);
  
  res.send({
    token: token
  });
});

module.exports = router;



