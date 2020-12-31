const { config } = require("../config");
const mysql = require("mysql2");
const pool = mysql.createPool({
  host: config.dbHost,
  user: config.dbUser,
  password: config.dbPassword,
  database: config.dbName,
});

const connection = pool.promise();

module.exports = { connection };
