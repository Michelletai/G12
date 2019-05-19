var express = require('express');
var router = express.Router();

const homeController = require('../../controllers/client/home');

router.get('/', homeController.getHome);

module.exports = router;