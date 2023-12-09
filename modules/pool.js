const pg = require('pg');
require('dotenv').config();

const dbHost = process.env.DB_HOST;
const dbPort = process.env.DB_PORT;
const dbUser = process.env.DB_USER;
const dbPassword = process.env.DB_PASSWORD;
const dbName = process.env.DB_NAME;

let config = {
  host: dbHost || 'localhost',
  port: dbPort || 5432,
  database: dbName || 'local',
  username: dbUser || '',
  password: dbPassword || '',
  max: 10,
  idleTimeoutMillis: 30000,
};

const pool = new pg.Pool(config);

// the pool with emit an error on behalf of any idle clients
// it contains if a backend error or network partition happens
pool.on('error', (err) => {
  console.log('Unexpected error on idle client', err);
  process.exit(-1);
});

module.exports = pool;
