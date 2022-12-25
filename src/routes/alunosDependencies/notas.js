const express = require("express");
const controller = require('../../controllers/alunosDependencies/avaliacao/notasController')
const router = express.Router();

router.get("/", controller.getAllnota);
router.get("/:id", controller.getNotaByID);
router.post("/", controller.cretaNota);
router.put("/:id", controller.putNotaByID);
router.delete("/:id", controller.deleteNota);

module.exports = router;