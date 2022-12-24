const express = require('express');
const router = express.Router();
const controlers = require('../controllers/alunosControlers');
router.post("/", controlers.createAluno);
module.exports = router;
