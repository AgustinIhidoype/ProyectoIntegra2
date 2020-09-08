var express = require('express');
var router = express.Router();
var detalleController = require ("../Controllers/detalleController");

router.get ("/post" , detalleController.post)
router.get ("/usuario" , detalleController.usuario)

module.exports = router;