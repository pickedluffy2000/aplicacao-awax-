const mysql = require('mysql2');

const connection = mysql.createConnection({
host: 'localhost',
user: 'user',
database: 'awaxdb',
password: 'password'
});

module.exports = connection;