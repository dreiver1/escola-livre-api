const sqlite3 = require('sqlite3');
const { open } = require('sqlite');

exports.openDb = async () => {
    return open({
        filename: '/tmp/database.db',
        driver: sqlite3.Database
    })
}