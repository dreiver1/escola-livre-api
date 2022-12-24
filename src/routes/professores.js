const express = require('express');
const router = express.Router();
const controlers = require('../controllers/professoresControlers');
router.post("/", controlers.CreateProf);
router.get("/", controlers.GetAllProf);
router.get("/:id", controlers.GetProfById);
router.put("/:id", controlers.AlteraProf);
router.delete("/:id", controlers.DelteProf);
module.exports = router;
