const express = require('express');
const router = express.Router();
const controlers = require('../controllers/alunosDependencies/turma/turmaController');
const auth = require('../middlewares/authController')
router.post("/", auth, controlers.createTurma);
router.post("/aluno", auth, controlers.AdicionaAluno);
router.get("/", auth, controlers.getAllturmas);
router.get("/:id", auth, controlers.getTurmaById);
router.put("/:id", auth, controlers.putTurma);
router.delete("/:id", auth, controlers.deleteTurma);
module.exports = router;
