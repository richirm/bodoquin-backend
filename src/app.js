const express = require('express');
const app = express();
 
app.get('/alumnos', function (req, res) {
  const alumnos = [
    {
      nombre: 'Rufo',
      edad: 8,
      color: 'gris'
    },
    {
      nombre: 'Pierina',
      edad: 10,
      color: 'negro'
    },
    {
      nombre: 'Boby',
      edad: 18,
      color: 'blanco'
    },
    {
      nombre: 'Ricardito',
      edad: 7,
      color: 'Blanco y marron'
    },
    {
      nombre: 'Oso',
      edad: 23,
      color: 'Negro'
    }
  ];
  
  const alumnosFiltrados = alumnos.filter((alumno) => {
    return alumno.edad >= Number(req.query.edadMin) && 
           alumno.edad <= Number(req.query.edadMax);
  });
  
  res.send(alumnosFiltrados);
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
 
app.listen(3000, function () {
  console.log('La aplicación se ha levantado en el puerto 3000');
});