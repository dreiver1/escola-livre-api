const express = require('express');
const router = express.Router();
const controlers = require('../controllers/services');
router.post("/auth", controlers.authValidation);
module.exports = router;
