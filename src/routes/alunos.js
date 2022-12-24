const express = require('express');
const router = express.Router();
const controlers = require('../controllers/alunosControlers');
router.post("/", controlers.createAluno);
router.get("/", controlers.GetAllAluno);
router.get("/:id", controlers.GetAlunoById);
router.put("/:id", controlers.AlteraAluno);
router.delete("/:id", controlers.DelteAluno);
module.exports = router;
