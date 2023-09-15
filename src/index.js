const http = require('http'); 
const app = require('./app');

const sqlite3 = require('sqlite3').verbose();
let db = new sqlite3.Database('./db/chinook.db', sqlite3.OPEN_READWRITE, (err) => {
    if (err) {
      console.error(err.message);
    }
    console.log('Connected to the chinook database.');
  
  });

db.close((err) => {
if (err) {
    console.error(err.message);
}
console.log('Close the database connection.');
});
const server = http.createServer(app);
const port = process.env.PORT || 3002;
server.listen(port, (req, res) =>{
    console.log(`Servidor onn na porta: http://localhost:${port}`);
});