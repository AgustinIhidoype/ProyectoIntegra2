var express = require('express');
var router = express.Router();
var loginController = require ("../Controllers/loginController");

router.get ("/" , loginController.login)

module.exports = router;