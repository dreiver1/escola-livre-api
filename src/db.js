const sqlite3 = require('sqlite3');
const { open } = require('sqlite');

exports.openDb = async () => {
  console.log('dataBase')
  return open({
    filename: './database.db',
    driver: sqlite3.Database
  })
};