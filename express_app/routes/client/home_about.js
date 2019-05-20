var express = require('express');
var router = express.Router();

const homeAboutController = require('../../controllers/client/home_about');

router.get('/', homeAboutController.getHome);

module.exports = router;