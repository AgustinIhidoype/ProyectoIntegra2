var express = require('express');
var router = express.Router();
var detalleController = require ("../Controllers/detalleController");

router.get ("/post/:id" , detalleController.post)
router.get ("/usuario/:id" , detalleController.usuario)

router.post('/comentado', detalleController.comentado)


module.exports = router;