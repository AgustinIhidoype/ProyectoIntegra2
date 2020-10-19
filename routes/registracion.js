var express = require('express');
var router = express.Router();
var registracionController = require ("../Controllers/registracionController");

router.get ("/" , registracionController.registracion)

router.post('/registrado', registracionController.registrado)

module.exports = router;