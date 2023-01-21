const express = require('express');
const router = express.Router();
const controlers = require('../controllers/alunosControlers');
const auth = require('../middlewares/authController');

router.post("/", auth, controlers.createAluno);
router.get("/", auth, controlers.GetAllAluno);
router.get("/:id", auth, controlers.GetAlunoById);
router.get("/turma/:id", auth, controlers.getAlunosByTurma);
router.put("/:id", auth, controlers.AlteraAluno);
router.delete("/:id", auth, controlers.DelteAluno);
module.exports = router;
