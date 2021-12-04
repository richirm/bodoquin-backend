const express = require('express');
const app = express();
 
app.get('/alumnos', function (req, res) {
  const alumnos = [
    {
      nombre: 'Rufo',
      edad: 8,
      color: 'gris'
    }
  ];
  res.send(alumnos);
});
 
app.get('/mascotas', function (req, res) {
  const mascotas = [
    {
      nombre: 'Rufo',
      edad: 8,
      color: 'gris'
    },
    {
      nombre: 'Ricardito',
      edad: 6,
      color: 'blanco'
    },
    {
      nombre: 'Marco',
      edad: 8,
      color: 'crema'
    }
  ];
  res.send(mascotas);
});

app.get('/cursos', function (req, res) {
  const cursos = [
    {
      nombre: 'Fisica',
      costo: 100
    },
    {
      nombre: 'Quimica',
      costo: 50
    }
  ];
  res.send(cursos);
});

app.get('/comidas', function (req, res) {
  const comidas = [
    {
      nombre: 'Cebiche',
      precio: 29.90,
      ingredientes: 'pescado'
    },
    {
      nombre: 'Chaufa',
      precio: 15.00,
      ingredientes: 'pollo'
    },
    {
      nombre: 'Carapúlcra',
      precio: 18.00,
      ingredientes: 'papa seca'
    }
  ];
  res.send(comidas);
});
 
app.listen(3000, function () {
  console.log('La aplicación se ha levantado en el puerto 3000');
});