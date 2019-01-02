const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'momovnc.sytes.net',
    user: 'Harry',
    database: 'ikea',
    password: 'sqlclass2018'
});

module.exports = pool.promise();