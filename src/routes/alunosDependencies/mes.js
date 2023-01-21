const express = require('express');
const router = express.Router();
const controllerMes = require("../../controllers/alunosDependencies/frequencia/mesController");
const auth = require('../middlewares/authController');

router.get("/", auth, controllerMes.getAllMes);
router.get("/:id", auth, controllerMes.getMesById);
router.get("/frequencia/:id", auth, controllerMes.getMesByFrequenciaId);
router.post("/", auth, controllerMes.createMes);
router.put("/:id", auth, controllerMes.putMes);
router.delete("/:id", auth, controllerMes.deleteMes);
module.exports = router;
