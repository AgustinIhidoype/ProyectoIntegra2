var express = require('express');
var router = express.Router();
var miPerfilController = require ("../Controllers/miPerfilController");

router.get ("/" , miPerfilController.perfil1)

module.exports = router;