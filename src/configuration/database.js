const mysql = require("mysql");

module.exports = {
  conectar: function(callbackSuccess, callbackError) {
    var connection = mysql.createConnection({
      host: 'localhost',
      port: 3306,
      database: 'bodoquin_bd',
      user: 'root',
      password: 'bodoquin123',
    });
    
    let error;
    
    connection.connect(function(errorBD){
      if(errorBD){
        error = errorBD;
      }
    });

    if(error) {
      callbackError(error);
    } else {
      callbackSuccess(connection);
    }

    connection.end();
  }
}