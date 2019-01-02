var express = require('express');
var router = express.Router();

const ikeadashController = require('../controllers/ikea_dash');

router.get('/', ikeadashController.getDashboard);

module.exports = router;