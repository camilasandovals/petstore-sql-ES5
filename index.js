const mysql = require('mysql2');
const connection = require('./connection.js');

const db = mysql.createConnection(connection);

db.query("SELECT * FROM owners", (err, data) =>{
    if(err){
        console.error(err);
    }
    console.table(data);
    db.end();
});


//node .