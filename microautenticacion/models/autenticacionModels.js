const mysql = require('mysql2/promise');
const connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'proyecto'
});
//autenticacion para el login
async function validarUsuario(usuario, contrasena) {
    const result = await connection.query('SELECT * FROM usuario WHERE usuario = ? AND contrasena=?', [usuario, contrasena]);
    return result[0]; 
}



module.exports = {validarUsuario}