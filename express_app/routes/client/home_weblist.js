var express = require('express');
var router = express.Router();

const homeWebListController = require('../../controllers/client/home_weblist');

router.get('/', homeWebListController.getHome);

module.exports = router;