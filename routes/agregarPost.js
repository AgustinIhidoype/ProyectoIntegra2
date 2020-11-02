var express = require('express');
var router = express.Router();
var agregarPostController = require ('../Controllers/agregarPostController')

router.get ("/" , agregarPostController.agregarPost )

router.post('/posteado', agregarPostController.posteado)

module.exports = router;