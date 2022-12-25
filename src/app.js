const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const bodyParser = require('body-parser');

const turmas = require('./routes/turmas');
const administradores = require('./routes/administradores');
const alunos = require('./routes/alunos');
const professores = require('./routes/professores');
const frequencia = require('./routes/alunosDependencies/frequencia');
const mes = require('./routes/alunosDependencies/mes');
const notas = require('./routes/alunosDependencies/notas');

const app = express();


app.use(cors());
app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use("/admin", administradores);
app.use("/prof", professores);
app.use("/alunos", alunos);
app.use("/turmas", turmas);
app.use("/frequencia", frequencia);
app.use("/mes", mes)
app.use("/notas", notas)


module.exports = app;