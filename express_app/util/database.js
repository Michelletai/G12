const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'blogen',
    password: 'k3241234'
});

module.exports = pool.promise();