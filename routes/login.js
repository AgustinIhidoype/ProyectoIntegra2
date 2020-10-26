var express = require('express');
var router = express.Router();
var loginController = require ("../Controllers/loginController");

router.get ("/" , loginController.login)

router.post('/logueado', loginController.logueado)

router.get('/desloguear', loginController.desloguear)

module.exports = router;