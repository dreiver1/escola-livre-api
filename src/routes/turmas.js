const express = require('express');
const router = express.Router();
const controlers = require('../controllers/alunosDependencies/turma/turmaController');
router.post("/", controlers.createTurma);
router.get("/", controlers.getAllturmas);
router.get("/:id", controlers.getTurmaById);
router.put("/:id", controlers.putTurma);
router.delete("/:id", controlers.deleteTurma);
module.exports = router;
