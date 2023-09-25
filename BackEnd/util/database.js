const mysql = require('mysql');
const dotenv = require('dotenv');
dotenv.config();

const db = mysql.createPool({
    host: process.env.HOST,
    user: process.env.USER,
    database: process.env.DATABASE,
    password: process.env.PASSWORD,
    multipleStatements: true
});

module.exports = db;

// const mysql = require("mysql");
// const dotenv = require("dotenv");
// dotenv.config();

// const db = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   database: "db_supplypro",
//   password: "0768667087@Sv",
//   multipleStatements: true,
// });

// db.connect(function (err) {
//   if (err) throw err;
//   console.log("Connected!");
// });

// module.exports = db;
