var express = require('express');
var router = express.Router();
var agregarPostController = require ('../Controllers/agregarPostController')

router.get ("/" , agregarPostController.hola )

module.exports = router;