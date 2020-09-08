var express = require('express');
var router = express.Router();
var homeController = require ("../Controllers/homeController");

router.get ("/home" , homeController.hola)

module.exports = router;