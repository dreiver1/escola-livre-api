const http = require('http'); 
const app = require('./app');

const server = http.createServer(app);
const port = process.env.PORT || 3002;
server.listen(port, (req, res)=>{
    console.log(`Servidor onn na porta: http://localhost:${port}`);
});