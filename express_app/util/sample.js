const mysql = require('mysql2');

const pool = mysql.createPool({
    host: '122.116.190.88',
    user: 'tku',
    database: 'blogen',
    password: '1093'
});

module.exports = pool.promise();