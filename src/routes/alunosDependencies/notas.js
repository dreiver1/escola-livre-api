const express = require("express");
const controller = require('../../controllers/alunosDependencies/avaliacao/notasController')
const router = express.Router();
const auth = require('../../middlewares/authController');


router.get("/", auth, controller.getAllnota);
router.get("/:id", auth, controller.getNotaByID);
router.post("/", auth, controller.cretaNota);
router.put("/:id", auth, controller.putNotaByID);
router.delete("/:id", auth, controller.deleteNota);

module.exports = router;