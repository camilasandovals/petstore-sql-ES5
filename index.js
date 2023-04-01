const mysql = require('mysql2');
// import { createConnection } from 'mysql2
const connection = require('./connection.js');
// import { connection } from './connection.js'

const db = mysql.createConnection(connection);

db.query("SELECT * FROM owners", (err, data) =>{
    if(err){
        console.error(err);
    }
    console.table(data);
    db.end();
});


//node .