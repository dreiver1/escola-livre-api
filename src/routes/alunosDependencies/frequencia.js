
const express = require("express");
const router = express.Router();
const controllerFrequencia = require("../../controllers/alunosDependencies/frequencia/frequenciaController")
const controllerMes = require("../../controllers/alunosDependencies/frequencia/mesController")
const auth = require('../middlewares/authController');

router.get("/", auth, controllerFrequencia.getAllFrequencia);
router.get("/:id", auth, controllerFrequencia.getFrequenciaById);
router.get("/turma/:id", auth, controllerFrequencia.getAllFrequenciaByturmaId);
router.post("/", auth, controllerFrequencia.createFrequencia);
router.put("/:id", auth, controllerFrequencia.putFrequencia);
router.delete("/:id", auth, controllerFrequencia.deleteFrequencia);


module.exports = router;