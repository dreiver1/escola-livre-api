
const express = require("express");
const router = express.Router();
const controllerFrequencia = require("../../controllers/alunosDependencies/frequencia/frequenciaController")
const controllerMes = require("../../controllers/alunosDependencies/frequencia/mesController")

router.get("/", controllerFrequencia.getAllFrequencia);
router.get("/:id", controllerFrequencia.getFrequenciaById);
router.post("/", controllerFrequencia.createFrequencia);
router.put("/:id", controllerFrequencia.putFrequencia);
router.delete("/:id", controllerFrequencia.deleteFrequencia);


module.exports = router;