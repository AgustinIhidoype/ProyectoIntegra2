var express = require('express');
var router = express.Router();
var homeController = require ("../Controllers/homeController");

router.get ("/" , homeController.posteos)
router.get ("/prueba" , homeController.prueba)
router.post ('/borrarpost', homeController.delete)
router.get ("/buscarposteo", homeController.buscarpost)
router.get('/resultados', homeController.resultados)
router.get ("/resultadosPost", homeController.resultadosPost)

module.exports = router;