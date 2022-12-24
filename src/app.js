const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const bodyParser = require('body-parser');

const incio = require('./routes/inicio')
const administradores = require('./routes/administradores')
const alunos = require('./routes/alunos')
const professores = require('./routes/professores')


const app = express();
// const router = express.Router();
app.use(cors());
app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended: false}));
app.use(bodyParser.json());

const home = (req, res) => {
    res.writeHead(200);
    res.end('hellow, world');
} 
// app.use("/", home);
app.use("/", incio);
app.use("/administradores", administradores);
app.use("/professores", professores);
app.use("/alunos", alunos);


module.exports = app;