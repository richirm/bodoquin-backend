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

app.get('/musicas', function (req, res) {
  const musicas = [
    {
      nombre: 'the Cranberries ',
      precio: 50,
      genero: 'rock'
    },
    {
      nombre: 'monkey dance',
      precio: 90,
      genero: 'pop'
    },
    {
      nombre: 'inolvidable',
      precio: 80,
      genero: 'musicas'
    }
  ];
  res.send(musicas);
});

app.get('/centrosTuristicos', function (req, res) {
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
 
app.listen(3000, function () {
  console.log('La aplicación se ha levantado en el puerto 3000');
});