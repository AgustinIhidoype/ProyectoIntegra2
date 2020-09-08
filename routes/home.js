var express = require('express');
var router = express.Router();
var homeController = require ("../Controllers/homeController");

router.get ("/" , homeController.hola)

module.exports = router;