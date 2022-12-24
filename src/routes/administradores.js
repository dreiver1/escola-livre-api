const express = require('express');
const router = express.Router();
const administradoresControlers = require('../controllers/administradoresControlers')

router.get("/", administradoresControlers.GetAllAdmin);
router.get("/:id", administradoresControlers.GetAdminById);
router.post("/", administradoresControlers.CreateAdmin);
router.put("/:id", administradoresControlers.AlteraAdmin);
router.delete("/:id", administradoresControlers.DelteAdm);



module.exports = router;