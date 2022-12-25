const express = require('express');
const router = express.Router();
const controllerMes = require("../../controllers/alunosDependencies/frequencia/mesController");
router.get("/", controllerMes.getAllMes);
router.get("/:id", controllerMes.getMesById);
router.post("/", controllerMes.createMes);
router.put("/:id", controllerMes.putMes);
router.delete("/:id", controllerMes.deleteMes);
module.exports = router;