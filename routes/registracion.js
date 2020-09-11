var express = require('express');
var router = express.Router();
var registracionController = require ("../Controllers/registracionController");

router.get ("/" , registracionController.registracion)

module.exports = router;