const express = require('express');
const ejs = require('ejs');
const connect = require('./db');
const mysql = require('mysql2/promise');
const path = require('path')
const bodyParser = require ("body-parser");
const app = express ();
const PORT = 3004;

app.use(express.static('public'))
app.use(bodyParser.json());
app.set('views', path.join(__dirname, "public/views"))
app.set('view engine', 'ejs')

app.get('/', async (req, res) => {
    try {
        const connection = await connect();
        const [rows, fields] = await connection.execute('SELECT * FROM orderdetails');
        await connection.end();
        res.render('tabla', { orderdetails: rows });
    } catch (error) {
        console.error('Error al obtener datos de la base de datos:', error);
        res.status(500).send('Error interno del servidor');
    }
});

app.listen(PORT, () => {
    console.log(`Servido en http://localhost:${PORT}`);
});
