const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'Harry',
    database: 'db_404411687',
    password: 'sqlclass2018'
});

module.exports = pool.promise();