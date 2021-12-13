# bodoquin-backend

1. Base datos: El lugar donde vamos a almacenar de forma permanente 
    los datos que vamos a utilizar en nuestrra aplicación
    - Comandos básicos:
        CREATE DATABASE {basedatos} => crear la base de datos
        USE {basedatos} => posicionarnos en la base de datos
        CREATE TABLE {tabla} => crear una tabla en la base de datos
        SELECT * FROM {tabla} ... WHERE => mostrar los registros de una tabla
        INSERT INTO {tabla} => insertar un registro en una tabla
        UPDATE {tabla} ... WHERE => actualizar las columnas de un registro en una tabla
        DELETE FROM {tabla} ... WHERE  => eliminar un registro de una tabla
        
2. Backend: 
    - Sinonimos:
      - Microservicio
      - Api
      - Endpoint
      - Backend
      - Servicio rest
    - Caracteristicas:
      - Valida la seguridad en la autenticación (login) y la autorización.
      - Es el sistema o aplicación que permite ejecutar todas las lógicas de negocio
      - Interactua con la base de datos para la persistencia de la información o registros
      - Interactua con el frontend para recibir (request) o responder (response) peticiones
    - Endpoint:
      - Es una url de la aplicación del backend, cuyo objetivo es realizar una operación
        en específico, de tal forma que en algunos casos va a guardar datos en la
        base de datos, y otros casos va a devolver o responder con datos.
      - Metodos:
          GET => Es un endpoint que sirve para obtener o devolver un registro(s) 
                  de la base de datos (BD) hacia el frontend
          POST => Es un endpoint que sirve para crear un registro en la base de datos (BD)
          PUT => Es un endpoint que sirve para actualizar un registro en la base de datos (BD)
          DELETE => Es un endpoint que sirve para eliminar un registro en la base de datos (BD) 
      - Status:
          200 => Endpoint ha sido exitoso
          40X => Endpoint ha presentado errores (autenticación - 401 o autorización - 403)
          50X => Endpoint ha presentado errores
      - Partes:
          Request: es la comunicación desde el frontend hacia el backend
            Header => datos generales que envía el frontend
            Payload => datos principales que envía el frontend
             - query params: => parametros que se envían en la url del endpoint
             - body params: => parametros que se envían en el contenido del request
          Response: es la comunicación desde el backend hacia el frontend
      - Pasos y etapas de un endpoint:
          1.Definir el endpoint
          2.Programar la lógica del endpoint
          - recibir los parametros
          - validaciones o lógicas
          - acceder a la base datos
          3.Responder con un json  
      
3. Versionado:
    Es un número que indica la versión, estado o caracteristicas actuales de
    nuestra aplicación. Cada nueva versión indica que hay nuevas caracteristicas 
    o correcciones
    Major minor patch
      1.0.0 => Bodoquin js
      2.0.0 => Bodoquin Angular
      2.1.0 => Bodoquin Angular + carrito compras (feature)
      2.1.1 => Bodoquin Angular + carrito compras + corrección bug (hotfix)
      2.2.0 => Bodoquin Angular + carrito compras + corrección bug + Modulo de Electrodomesticos
      2.2.0 => Bodoquin Angular + carrito compras + corrección bug + Modulo de Electrodomesticos
      3.0.0 => Bodoquin React
      4.0.0 => Bodoquin Vue
      
4. Dependencias:
     Son las librerías, paquetes o artecfactos que utiliza nuestro proyecto 
     para que pueda funcionar
     
    - Repositorio de Artefactos:
      Es el servidor donde se van a almacenar los artefactos
      Un ejemplo de repositorio de artecfactos es el "registry"
      
5. GIT:
   - gitignore:
     Archivo donde colocamos las carpetas o archivos que queremos que el git ignore
     al momento de hacer commit o push
     
6. NPM (Node):
   - Herramienta que me permite ejecutar funcionalidades para Node como el
      instalar dependencias
   - Comandos:
     npm install => instalar todas las dependencias que están en el package.json
     npm install {libreria} => instala la librería especificada
     npm start => comando para inicializar la aplicación
     npm init => comando para inicializar un proyecto con node
     
     
    
      
      