var express = require('express');
var router = express.Router();
var homeController = require ("../Controllers/homeController");

router.get ("/" , homeController.posteos)
router.get ("/prueba" , homeController.prueba)
router.get('/resultados', homeController.resultados)

module.exports = router;