const mysql = require('mysql2');

// Create a database connection
const connection = mysql.createConnection({
    host: 'localhost',      // Database host
    user: 'root',  // Database user name
    password: 'yzc661800', // password
    database: 'crowdfunding_db' // Database name
});

// Connect to database
connection.connect((err) => {
    if (err) {
        console.error('Database connection error:', err.stack);
        return;
    }
    console.log('Successfully connected to the database');
});

// Derived connection
module.exports = connection;
