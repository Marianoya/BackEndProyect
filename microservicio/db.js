const mysql = require('mysql2/promise');

async function connect() {
    return await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'Aqui ponga su contrasenia',
        database: 'licensingtable3'
    });
}

module.exports = connect;